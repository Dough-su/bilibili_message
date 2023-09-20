import 'package:achievement_view/achievement_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muse_siixn_i/api/get_medal_wall.dart';
import 'package:muse_siixn_i/global.dart';
import 'package:uuid/uuid.dart';

class send_message {
  Map<String, dynamic> sendData = {
    'msg[sender_uid]': global.DedeUserID,
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

  Future<bool> send_messages(
      String userId, msgType, content, BuildContext context) async {
    try {
      //设置data中的receiver_id
      sendData['msg[receiver_id]'] = userId;
      //设置data中的timestamp
      sendData['msg[timestamp]'] =
          DateTime.now().millisecondsSinceEpoch.toString();
      //设置data中的csrf_token
      sendData['csrf_token'] = global.bili_jct;
      //设置data中的csrf
      sendData['csrf'] = global.bili_jct;
      //设置data中的content
      sendData['msg[content]'] = content;
      //设置data中的dev_id，随机uuid
      sendData['msg[dev_id]'] = Uuid().v4();
      //设置data中的msg_type
      sendData['msg[msg_type]'] = msgType;
      //设置data中的msg_status
      Dio dio = Dio();
      if (!await get_medal_wall().get_medal_walls(global.DedeUserID, userId)) {
        AchievementView(
          title: "出错了",
          subTitle: "你没有该主播大于等于4级勋章，无法发送消息",
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.redAccent,
        ).show(context);
        return false;
      }

      Response response = await dio.post(
        'https://api.vc.bilibili.com/web_im/v1/web_im/send_msg',
        data: sendData,
        //携带cookie和headers
        options: Options(headers: global.headers),
      );

      //将返回的json数据转换为map
      Map<String, dynamic> data = response.data;
      if (data['code'] == 0) {
        return true;
      } else {
        AchievementView(
          title: "出错了",
          subTitle: data['message'],
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.redAccent,
        ).show(context);
        return false;
      }
    } catch (e) {
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