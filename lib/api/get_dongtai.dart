import 'package:dio/dio.dart';
import 'package:muse_siixn_i/global.dart';

class get_dongtai {


  Future<Map<String, dynamic>>
  get_dongtais(String userid) async {
    Dio dio = new Dio();

    List<Map<String, dynamic>> chatData = [];
    Response response = await dio.get(
        'https://api.bilibili.com/x/polymer/web-dynamic/v1/feed/space?offset=&host_mid=${global.DedeUserID}&timezone_offset=-480&features=itemOpusStyle,listOnlyfans',
        //携带cookie和headers
        options: Options(headers: global.headers));
    //将返回的json数据转换为map
    Map<String, dynamic> data = response.data;
    return data;

  }
}