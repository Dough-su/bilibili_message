import 'package:dio/dio.dart';
import 'package:muse_siixn_i/global.dart';

class get_medal_wall {
  Map<String, String> params = {
    'target_id': global.DedeUserID,
  };

  Future<bool>
  get_medal_walls(String userid,String target_id) async {
    //设置params中的talker_id
    params['talker_id'] = userid;
    Dio dio = new Dio();

    Response response = await dio.get(
        'https://api.live.bilibili.com/xlive/web-ucenter/user/MedalWall',
        queryParameters: params,
        //携带cookie和headers
        options: Options(headers: global.headers));
    //将返回的json数据转换为map
    Map<String, dynamic> data = response.data;
    if (data['code'] != 0) {
      return false;
    }
    else {
      var medal_list = data['data']['list'];
      for (var i = 0; i < medal_list.length; i++) {
        if (medal_list[i]['medal_info']['target_id'].toString() == target_id.toString() && medal_list[i]['medal_info']['level'] >= 4) {
          return true;
        }
      }
      return false;
    }
  }
}