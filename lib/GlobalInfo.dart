import 'package:shared_preferences/shared_preferences.dart';
/// This class contains global variables and methods used throughout the application.
class Global {
  static String cookie = '';
  static String dedeUserID = '';
  static String biliJct = '';

  /// Initializes the cookie value from SharedPreferences and sets it in headers.
  ///
  /// Returns the cookie value as a [Future] of [String]. Returns an empty string if an exception occurs.
  static Future<String> initCookie() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      cookie = prefs.getString('cookie') ?? '';
      await setCookie(cookie);
      return cookie;
    } catch (e) {
      return ''; // 返回空字符串表示出现异常
    }
  }

  /// Sets the cookie value in SharedPreferences and headers.
  ///
  /// Returns true if the cookie is set successfully, false otherwise.
  static Future<bool> setCookie(String cookie) async {
    try {
      //将cookie中的\n和\r去掉
      cookie = cookie.replaceAll('\n', '');
      cookie = cookie.replaceAll('\r', '');

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('cookie', cookie);
      Global.cookie = cookie;

      // 修改cookie后重新设置headers
      headers['cookie'] = cookie;
      
      Map<String, String> cookies = {};

      List<String> cookieList = cookie.split("; ");
      for (String cookie in cookieList) {
        List<String> cookieParts = cookie.split("=");
        cookies[cookieParts[0]] = cookieParts[1];
      }
      // 设置bili_jct
      biliJct = cookies['bili_jct'] ?? '';
      //设置DedeUserID
      dedeUserID = cookies['DedeUserID'] ?? '';
      return true;
    } catch (e) {
      return false; // 返回false表示出现异常
    }
  }

  static Map<String, String> headers = {
    'authority': 'api.bilibili.com',
    'accept': 'application/json, text/plain, /',
    'accept-language': 'zh-CN,zh;q=0.9',
    'cookie': '',
    'content-type': 'application/x-www-form-urlencoded',
    'dnt': '1',
    'origin': 'https://message.bilibili.com',
    'referer': 'https://message.bilibili.com/',
    'sec-ch-ua':
        '"Chromium";v="116", "Not)A;Brand";v="24", "Google Chrome";v="116"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"macOS"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'same-site',
    'user-agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36',
  };
}
