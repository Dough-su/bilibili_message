import 'package:flutter/material.dart';
import 'package:muse_siixn_i/Dialog/AboutDialog.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'package:muse_siixn_i/pages/ChatPage.dart';

/// A widget that displays a list of chats.
///
/// This widget takes a list of chat data and displays it in a [ListView].
/// Each chat is represented by a [ListTile] with the chat's avatar, name, last message,
/// time, and unread count (if any). Tapping on a chat navigates to the [ChatPage] for that chat.
///
/// The widget also includes an app bar with a title, settings icon, and info icon.
/// Tapping on the settings icon displays a dialog for setting the cookie.
/// Tapping on the info icon displays an [AboutDialogPage].
class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> chatData;

  const ChatList({super.key, required this.chatData});

  @override
  Widget build(BuildContext context) {
    Global.initCookie();

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
                      title: const Text('设置cookie'),
                      content: TextField(
                        controller: TextEditingController(text: Global.cookie),
                        onChanged: (value) {
                          Global.setCookie(value);
                        },
                      ),
                      actions: [
                        TextButton(
                          child: const Text('确定'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            )),
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