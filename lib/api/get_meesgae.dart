import 'package:dio/dio.dart';
import 'package:muse_siixn_i/global.dart';

class get_message {
  Map<String, String> params = {
    'sender_device_id': '1',
    'talker_id': '1795147802',
    'session_type': '1',
    'size': '200',
    'end_seqno': '0',
    'begin_seqno': '0',
    'build': '0',
    'mobi_app': 'web',
  };

    Future<Map<String, dynamic>>
    get_messages(String userid) async {
    //设置params中的talker_id
    params['talker_id'] = userid;
    Dio dio = new Dio();

    List<Map<String, dynamic>> chatData = [];
    Response response = await dio.get(
        'https://api.vc.bilibili.com/svr_sync/v1/svr_sync/fetch_session_msgs',
        queryParameters: params,
        //携带cookie和headers
        options: Options(headers: global.headers));
    //将返回的json数据转换为map
    Map<String, dynamic> data = response.data;
    return data;

  }
}