import 'package:dio/dio.dart';
import 'package:muse_siixn_i/global.dart';

class get_emoji {

  Future<Map<String, dynamic>>
  get_emojis() async {
    Dio dio = new Dio();

    List<Map<String, dynamic>> chatData = [];
    Response response = await dio.get(
        'https://api.bilibili.com/x/emote/user/panel/web?business=reply',
        //携带cookie和headers
        options: Options(headers: global.headers));
    //将返回的json数据转换为map
    Map<String, dynamic> data = response.data;
    return data;

  }
}