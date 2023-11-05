import 'package:achievement_view/achievement_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:muse_siixn_i/api/Baseurl.dart';
import 'package:muse_siixn_i/api/GetMedalWall.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'package:uuid/uuid.dart';
/// This class is responsible for sending messages to a user on Bilibili.
/// It contains a method `sendMessages` which takes in the user ID, message type, message content, and a BuildContext.
/// The `sendMessages` method sends the message to the user and returns a boolean indicating whether the message was sent successfully or not.
/// If the message fails to send, an AchievementView is displayed with an error message.
class SendMessage {
  Map<String, dynamic> sendData = {
    'msg[sender_uid]': Global.dedeUserID,
    'msg[receiver_id]': '',
    'msg[receiver_type]': '1',
    'msg[msg_type]': '1',
    'msg[msg_status]': '0',
    'msg[content]': '{"content":""}',
    'msg[timestamp]': '',
    'msg[new_face_version]': '4',
    'msg[dev_id]': '',
    'from_firework': '1',
    'build': '0',
    'mobi_app': 'web',
    'csrf_token': '',
    'csrf': '',
  };

  /// Sends a message to the user with the given [userId], [msgType], and [content].
  /// Returns a boolean indicating whether the message was sent successfully or not.
  /// If the message fails to send, an AchievementView is displayed with an error message.
  Future<bool> sendMessages(
      String userId, msgType, content, BuildContext context) async {
    try {
      sendData['msg[receiver_id]'] = userId;
      sendData['msg[timestamp]'] =
          DateTime.now().millisecondsSinceEpoch.toString();
      sendData['csrf_token'] = Global.biliJct;
      sendData['csrf'] = Global.biliJct;
      sendData['msg[content]'] = content;
      sendData['msg[dev_id]'] = const Uuid().v4();
      sendData['msg[msg_type]'] = msgType;
      Dio dio = Dio();
      if (!await GetMedalWall().getMedalWalls(Global.dedeUserID, userId)) {
        // ignore: use_build_context_synchronously
        AchievementView(
          title: "出错了",
          subTitle: "你没有该主播大于等于4级勋章，无法发送消息",
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.redAccent,
        ).show(context);
        return false;
      }

      Response response = await dio.post(
        '${Baseurl.apivc}/web_im/v1/web_im/send_msg',
        data: sendData,
        options: Options(headers: Global.headers),
      );

      Map<String, dynamic> data = response.data;
      if (data['code'] == 0) {
        return true;
      } else {
        // ignore: use_build_context_synchronously
        AchievementView(
          title: "出错了",
          subTitle: data['message'],
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.redAccent,
        ).show(context);
        return false;
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      AchievementView(
        title: "出错了",
        subTitle: "发送消息失败：${e.toString()}",
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.redAccent,
      ).show(context);
      return false;
    }
  }
}
