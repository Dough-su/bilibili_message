import 'dart:async';

import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muse_siixn_i/Dialog/AboutDialog.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'package:muse_siixn_i/api/GetQrcode.dart';
import 'package:muse_siixn_i/api/GetQrcodeStatus.dart';
import 'package:muse_siixn_i/data/ChatUser.dart';
import 'package:muse_siixn_i/pages/ChatPage.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

/// A widget that displays a list of chats.
///
/// This widget takes a list of chat data and displays it in a [ListView].
/// Each chat is represented by a [ListTile] with the chat's avatar, name, last message,
/// time, and unread count (if any). Tapping on a chat navigates to the [ChatPage] for that chat.
///
/// The widget also includes an app bar with a title, settings icon, and info icon.
/// Tapping on the settings icon displays a dialog for setting the cookie.
/// Tapping on the info icon displays an [AboutDialogPage].
class ChatList extends StatefulWidget {  // 将ChatList更改为StatefulWidget，以便能够管理状态

  @override
  _ChatListState createState() => _ChatListState();
}
class _ChatListState extends State<ChatList> {
  late Timer _timer;
  int _qrCodeStatus = 1000; // 初始化二维码状态为1000
  String? _inputCookie;  // 添加一个状态来保存输入框里面的值
  String? _qrCodeUrl;  // 保存二维码的url

  @override
  void initState() {
    Global.initCookie();
    super.initState();
  }
  @override
  void dispose() {
    _timer?.cancel();  // 清理timer
    super.dispose();
  }
  void startTimer(String url) {
    const oneSec = const Duration(seconds: 1);
    final qrcode_key = url.split('qrcode_key=')[1].split('&')[0];
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) async {
        final qrCodeStatus = await GetQrcodeStatus().GetQrcodeStatuss(qrcode_key);
        switch(_qrCodeStatus){
          case 80000:
          // 二维码已失效
            stopTimer();
            break;
          case 80011:
          // 已取消扫码
            stopTimer();
            break;
            case 86101:
              // 未扫码
              break;
          case 86090:
          // 已扫码，但尚未判断
            break;
          case 0:
            Navigator.of(context).pop();
          // 登录成功
            stopTimer();
            break;
        }
        //如果二维码状态发生变化，就更新状态
        if (qrCodeStatus != _qrCodeStatus) {
          setState(() {
            AchievementView(
              title:  "提示",
              subTitle: qrCodeMessage(qrCodeStatus),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueAccent,
            ).show(context);
            _qrCodeStatus = qrCodeStatus;
          });
        }

      },
    );
  }
  void stopTimer() {
    if (_timer != null) {
      _timer.cancel();

    }
  }

  String  qrCodeMessage(int code) {
    switch(code){
      case 86038:
        return '登录成功了';
      case 80011:
        return '已取消扫码';
      case 86090:
        return '已扫码，请确认登录';
      case 0:
        return '登录成功';
      default:
        return '未扫码';
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: '聊天列表',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('聊天列表'),
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AboutDialogPage();
                  },
                );
              },
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('设置'),
                    content: Column(
                      children: [
                        const Text('设置cookie'),
                        TextField(
                          controller:
                              TextEditingController(text: Global.cookie),
                          onChanged: (value) {
                            _inputCookie = value;  // 保存输入框里的值，而不是直接保存cookie

                          },
                        ),
                        const Text('--或是扫描以下的二维码--'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: FutureBuilder<String>(
                              future: GetQrcode().GetQrcodes(),
                              builder: (BuildContext context, AsyncSnapshot<String> snapshot){
                                if (snapshot.connectionState == ConnectionState.waiting) {
                                  return CircularProgressIndicator();
                                } else if (snapshot.error != null) {
                                  return Text('Error: ${snapshot.error}');
                                } else {
                                  _qrCodeUrl = snapshot.data;
                                  startTimer(snapshot.data!);
                                  return PrettyQrView.data(
                                    data: snapshot.data!,
                                    decoration: const PrettyQrDecoration(
                                      image: PrettyQrDecorationImage(
                                        image: AssetImage('assets/eoe.jpeg')
                                      ),
                                    ),
                                  );
                                }
                              }
                          ),
                        ),
                        //或是点击以下的链接
                        TextButton(
                          child: const Text('或是点击复制登录链接在手机浏览器打开'),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: _qrCodeUrl!));
                            AchievementView(
                              title:  "提示",
                              subTitle: '已复制登录链接',
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.blueAccent,
                            ).show(context);
                          },
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        child: const Text('确定'),
                        onPressed: () {
                          if (_inputCookie != null) {
                            Global.setCookie(_inputCookie!);  // 点击确定的时候，保存cookie
                            _timer.cancel();  // 清理timer
                          }
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
        body: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (BuildContext context, int index) {
            final chat = chatData[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(chat['avatarUrl']),
              ),
              title: Text(chat['name']),
              subtitle: Text(chat['lastMessage']),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(chat['time']),
                  chat['unread']
                      ? Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            chat['unreadCount'].toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              onTap: () {
                // 导航到聊天页面，并传递用户ID
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                        userId: chat['id'],
                        username: chat['name'],
                        img: chat['avatarUrl']),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
