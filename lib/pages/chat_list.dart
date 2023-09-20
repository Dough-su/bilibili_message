import 'package:flutter/material.dart';
import 'package:muse_siixn_i/global.dart';
import 'package:muse_siixn_i/pages/chat_page.dart';
class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> chatData;

  ChatList({required this.chatData});


  @override
  Widget build(BuildContext context) {
    global.initCookie();

    return MaterialApp(
      title: '聊天列表',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('聊天列表'),
          leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
             //弹窗并设置cookie字符串
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('设置cookie'),
                    content: TextField(
                      //设置默认值
                      controller: TextEditingController(text: global.cookie),
                      onChanged: (value) {
                        //设置cookie
                       global.setCookie(value);
                      },
                    ),
                    actions: [
                      TextButton(
                        child: Text('确定'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          )
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
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            chat['unreadCount'].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
              onTap: () {
                // 导航到聊天页面，并传递用户ID
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(userId: chat['id'],username:chat['name'],img:chat['avatarUrl']),
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

