import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;
import 'package:muse_siixn_i/Dialog/EmojiPickerDialog.dart';
import 'package:muse_siixn_i/api/GetDongtai.dart';
import 'package:muse_siixn_i/api/GetEmoji.dart';
import 'package:muse_siixn_i/api/GetMessage.dart';
import 'package:muse_siixn_i/api/SendMessage.dart';
import 'package:muse_siixn_i/api/UploadPic.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
/// A stateful widget that represents the chat page.
///
/// This widget displays a chat page with a list of messages and a text input field to send new messages.
/// It takes in the user ID, username, and image as required parameters.
/// It also has a private `_ChatPageState` class that manages the state of the widget.
/// The state class contains methods to load messages, load emojis, add messages, and handle attachment selection.
/// The widget also uses the `types` library to define a `User` and `Message` class.
/// The `web_emoji` map is used to store the web emojis and their corresponding URLs.
class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
    required this.userId,
    required this.username,
    required this.img,
  });

  /// The ID of the user.
  final String userId;

  /// The username of the user.
  final String username;

  /// The image of the user.
  final String img;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

/// The state class for the `ChatPage` widget.
///
/// This class manages the state of the `ChatPage` widget.
/// It contains methods to load messages, load emojis, add messages, and handle attachment selection.
/// It also uses the `types` library to define a `User` and `Message` class.
/// The `web_emoji` map is used to store the web emojis and their corresponding URLs.
class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  Map<String, String> web_emoji = {};
  final textEditingController = TextEditingController();
  final _user = types.User(
    id: Global.dedeUserID,
  );

  @override
  void initState() {
    super.initState();

    _loadMessages();
    _loademoji();
  }

  /// Loads the emojis from the server and stores them in the `web_emoji` map.
  void _loademoji() {
    var emojiResponse = GetEmoji().getEmojis();
    emojiResponse.then((value) => {
          for (var packages in value['data']['packages'])
            {
              for (int i = 0; i < packages['emote'].length; i++)
                {
                  if (packages['emote'][i]['package_id'] != 4)
                    web_emoji[packages['emote'][i]['text']] =
                        packages['emote'][i]['url']
                }
            }
        });
  }

  /// Adds a message to the `_messages` list and updates the state.
  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  /// Handles the attachment selection and displays a modal bottom sheet with options.
  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection(1);
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('照片'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection(2);
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('照片(无视限制，曲线救国版,最好是横屏,横屏基本可以完美显示)'),
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
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return EmojiPickerDialog(
                          webEmoji: web_emoji,
                          textEditingController: textEditingController,
                        );
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

  /// Handles the selection of a dongtai and displays a dialog with the available options.
  void _handledongtaiSelection() {
    GetDongtai().getDongtais(widget.userId).then((value) {
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
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("选择要分享的动态"),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dynamicList.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = dynamicList[index];
                  return ListTile(
                    title: Text(item[1]),
                    onTap: () {
                      SendMessage()
                          .sendMessages(
                              widget.userId,
                              7,
                              '{"id":"${item[0]}","title":"${item[1]}","headline":"","source":2,"thumb":"${item[2]}","author":"爱你呦","author_id":"${Global.dedeUserID}"}',
                              context)
                          .then((value) {
                        if (value) {
                          final message = types.TextMessage(
                            author: _user,
                            createdAt: DateTime.now().millisecondsSinceEpoch,
                            id: const Uuid().v4(),
                            text: item[1],
                          );
                          _addMessage(message);
                          Navigator.pop(context);
                        }
                      });
                    },
                  );
                },
              ),
            ),
          );
        },
      );
    });
  }

  void _handleImageSelection(int type) async {
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
      // ignore: use_build_context_synchronously
      UploadPic()
          .uploadPics(widget.userId, bytes, context, type)
          .then((value) => {
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
    SendMessage()
        .sendMessages(
            widget.userId, 1, '{"content":"${message.text}"}', context)
        .then((value) => {
              if (value) {_addMessage(textMessage)}
            });
  }

  void _loadMessages() async {
    List<types.Message> messages = [];
    final webData = await GetMessage().getMessages(widget.userId);
    final webMessages = webData['data']['messages'];

    for (final message in webMessages) {
      //打印log
      if (message['msg_type'] == 1) {
        final author = types.User(
          id: message['sender_uid'].toString() == Global.dedeUserID
              ? Global.dedeUserID
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
          id: message['sender_uid'].toString() == Global.dedeUserID
              ? Global.dedeUserID
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
      if (message['msg_type'] == 7) {
        final content = jsonDecode(message['content']);
        //设置头像和昵称头像
        final author = types.User(
          id: message['sender_uid'].toString() == Global.dedeUserID
              ? Global.dedeUserID
              : widget.userId,
          firstName: widget.username,
          imageUrl: widget.img,
        );
        final imageMessage = types.ImageMessage(
          uri: content['thumb'],
          author: author,
          name: 'image.jpg',
          id: message['msg_seqno'].toString(),
          createdAt: message['msg_timestamp'],
          size: 10,
        );
        messages.add(imageMessage);
      }
    }
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
