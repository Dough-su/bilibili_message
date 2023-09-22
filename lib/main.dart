import 'package:flutter/material.dart';
import 'package:muse_siixn_i/data/ChatUser.dart';
import 'package:muse_siixn_i/pages/ChatList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eoe私信',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChatList(chatData: chatData),
    );
  }
}
