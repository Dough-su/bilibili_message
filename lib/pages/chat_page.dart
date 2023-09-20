import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;
import 'package:muse_siixn_i/Dialog/EmojiPickerDialog.dart';
import 'package:muse_siixn_i/api/get_dongtai.dart';
import 'package:muse_siixn_i/api/get_emoji.dart';
import 'package:muse_siixn_i/api/get_meesgae.dart';
import 'package:muse_siixn_i/api/send_message.dart';
import 'package:muse_siixn_i/api/upload_pic.dart';
import 'package:muse_siixn_i/global.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class ChatPage extends StatefulWidget {
  const ChatPage(
      {super.key,
      required this.userId,
      required this.username,
      required this.img});
  final String userId;
  final String username;
  final String img;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  Map<String,String> web_emoji={};
  //新建textEditingController
  final textEditingController = TextEditingController();
  final _user = types.User(
    id: global.DedeUserID,
  );

  @override
  void initState() {
    super.initState();
    _loadMessages();
    _loademoji();
  }
  void _loademoji(){
    var emoji_response= get_emoji().get_emojis();
    emoji_response.then((value) => {
      for(var packages in value['data']['packages']){
        for(int i=0;i<packages['emote'].length;i++){
          if(packages['emote'][i]['id']!='4')
          web_emoji[packages['emote'][i]['text']]=packages['emote'][i]['url']
        }
      }
    });
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('照片'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handledongtaiSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('分享动态'),
                ),
              ), TextButton(
                onPressed: () {
                  Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                      return EmojiPickerDialog(web_emoji: web_emoji,textEditingController: textEditingController,);
                    });
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('表情包'),
                ),
              ),

              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('取消'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handledongtaiSelection() {
    get_dongtai().get_dongtais(widget.userId).then((value) {
      var cards = value['data']['items'];
      List<dynamic> dynamicList = []; // 存储动态信息的列表

      for (var card in cards) {
        if (card['basic']['comment_type'] == 11) {
          var commentId = card['basic']['comment_id_str'];
          var text = card['modules']['module_dynamic']['major']['opus']
              ['summary']['text'];
          var picUrl = card['modules']['module_dynamic']['major']['opus']
              ['pics'][0]['url'];
          dynamicList.add([commentId, text, picUrl]);
        }
      }
      //作为列表弹窗，并且可以点击
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text('选择动态'),
              children: dynamicList.map((item) {
                return SimpleDialogOption(
                  child: Text(item[1]),
                  onPressed: () {
                    send_message().send_messages(widget.userId, 7,
                        '{"id":"${item[0]}","title":"${item[1]}","headline":"","source":2,"thumb":"${item[2]}","author":"爱你呦","author_id":"${global.DedeUserID}"}',context).then((value) {
                      if (value) {
                        final message = types.TextMessage(
                          author: _user,
                          createdAt: DateTime.now().millisecondsSinceEpoch,
                          id: const Uuid().v4(),
                          text: item[1],
                        );
                        _addMessage(message);
                        //弹出
                        Navigator.pop(context);
                      }
                    });
                  },
                );
              }).toList(),
            );
          }
      );


    });
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );
      upload_pic().upload_pics(widget.userId, bytes, context).then((value) => {
            if (value) {_addMessage(message)}
          });
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );
    send_message()
        .send_messages(
            widget.userId, 1, '{"content":"${message.text}"}', context)
        .then((value) => {
              if (value) {_addMessage(textMessage)}
            });
  }

  void _loadMessages() async {
    List<types.Message> messages = [];
    final webData = await get_message().get_messages(widget.userId);
    final webMessages = webData['data']['messages'];

    for (final message in webMessages) {
      if (message['msg_type'] == 1) {
        //设置头像和昵称头像
        final author = types.User(
          id: message['sender_uid'].toString() == global.DedeUserID
              ? global.DedeUserID
              : widget.userId,
          firstName: widget.username,
          lastName: '',
          imageUrl: widget.img,
        );


        String text = message['content']
            .toString()
            .substring(12, message['content'].toString().length - 2);
        final textMessage = types.TextMessage(
          author: author,
          createdAt: message['msg_timestamp'],
          id: message['msg_seqno'].toString(),
          text: text,
        );
        messages.add(textMessage);
      }
      if (message['msg_type'] == 2) {
        //将message['content']转换为json
        final content = jsonDecode(message['content']);
        //设置头像和昵称头像
        final author = types.User(
          id: message['sender_uid'].toString() == global.DedeUserID
              ? global.DedeUserID
              : widget.userId,
          firstName: widget.username,
          imageUrl: widget.img,
        );
        final imageMessage = types.ImageMessage(
          uri: content['url'],
          author: author,
          name: 'image.jpg',
          createdAt: message['msg_timestamp'],
          id: message['msg_seqno'].toString(),
          size: content['size'],
        );
        messages.add(imageMessage);
    }
    };
    setState(() {
      _messages = messages;

  });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.username),
        ),
        body: Chat(
          inputOptions: InputOptions(
            textEditingController: textEditingController,
          ),
          l10n: const ChatL10nZhCN(),
          messages: _messages,
          onAttachmentPressed: _handleAttachmentPressed,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          user: _user,
        ),
      );
}
