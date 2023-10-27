import 'package:dio/dio.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'Baseurl.dart';

/// A class that handles fetching messages from the server.
class GetQrcodeStatus {
  /// The default parameters for the API request.
  Map<String, String> params = {
    'qrcode_key': '',
    'source': 'main-fe-header',
  };

  /// Fetches messages for a given user ID.
  ///
  /// Returns a [Map] containing the response data.
  Future<int> GetQrcodeStatuss(String qrcode_key) async {
    params['qrcode_key'] = qrcode_key;
    Dio dio = Dio();
    Response response = await dio.get(
        '${Baseurl.passport}/x/passport-login/web/qrcode/poll',
        queryParameters: params,
        options: Options(headers: Global.headers,));
    Map<String, dynamic> data = response.data;
    print(data);
    if (data['data']['code'] != 0) {
      print(data['data']['message']);
      return data['data']['code'];
    } else {
      final setCookie = response.headers['set-cookie'];
      if (setCookie != null) {
        //将cookie过期时间去掉，只保留cookie的值
        //使用正则表达式去掉过期时间,从Expires开始到GMT结束
        final cookie = setCookie.toString().replaceAll(RegExp(r'Expires=.*?GMT'), '');
        //去掉domain
        final cookie1 = cookie.replaceAll(RegExp(r'Domain=.*?;'), '');
        //去掉path
        final cookie2 = cookie1.replaceAll(RegExp(r'Path=.*?;'), '');
        //去掉httponly
        final cookie3 = cookie2.replaceAll(RegExp(r'HttpOnly;'), '');
        //去掉secure
        final cookie4 = cookie3.replaceAll(RegExp(r'Secure'), '');
        //去掉空格
        final cookie5 = cookie4.replaceAll(RegExp(r' '), '');
        //去掉逗号
        final cookie6 = cookie5.replaceAll(RegExp(r','), '');
        //去掉两个分号
        final cookie7 = cookie6.replaceAll(RegExp(r';;'), ';');
        //去掉[和]
        final cookie8 = cookie7.replaceAll(RegExp(r'\['), '');
        final cookie9 = cookie8.replaceAll(RegExp(r'\]'), '');
        //给每个;后面加一个空格
        final cookie10 = cookie9.replaceAll(RegExp(r';'), '; ');
        print(cookie10);
        await Global.setCookie(cookie10);
        return data['data']['code'];
      }
      return data['data']['code'];
    }
  }
}
