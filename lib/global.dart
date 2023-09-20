import 'package:shared_preferences/shared_preferences.dart';

class global{
  static String cookie = '';

  static Future<String> initCookie()  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance() ;
    cookie = prefs.getString('cookie') ?? '';
    setCookie(cookie);
    return cookie;
}
  static Future<bool> setCookie(cookie) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('cookie', cookie);
    global.cookie = cookie;
    //修改cookie后重新设置headers
    headers['cookie'] = cookie;
    //修改cookie后重新设置DedeUserID，DedeUserID=161746469;
    for(int i=0;i<cookie.length;i++){
      if(cookie[i]=='D'&&cookie[i+1]=='e'&&cookie[i+2]=='d'&&cookie[i+3]=='e'&&cookie[i+4]=='U'&&cookie[i+5]=='s'&&cookie[i+6]=='e'&&cookie[i+7]=='r'&&cookie[i+8]=='I'&&cookie[i+9]=='D'&&cookie[i+10]=='='){
        for(int j=i+11;j<cookie.length;j++){
          if(cookie[j]==';'){
            DedeUserID = cookie.substring(i+11,j);
            break;
          }
        }
      }
    }
    //设置bili_jct
for(int i=0;i<cookie.length;i++){
      if(cookie[i]=='b'&&cookie[i+1]=='i'&&cookie[i+2]=='l'&&cookie[i+3]=='i'&&cookie[i+4]=='_'&&cookie[i+5]=='j'&&cookie[i+6]=='c'&&cookie[i+7]=='t'&&cookie[i+8]=='='){
        for(int j=i+5;j<cookie.length;j++){
          if(cookie[j]==';'){
            bili_jct = cookie.substring(i+9,j);
            break;
          }
        }
      }
    }
    return true;
  }
  static String DedeUserID = '';
  static String bili_jct = '';
  static Map<String, String> headers = {
  'authority': 'api.vc.bilibili.com',
  'accept': 'application/json, text/plain, */*',
  'accept-language': 'zh-CN,zh;q=0.9',
    'cookie': '',
  'content-type': 'application/x-www-form-urlencoded',
  'dnt': '1',
  'origin': 'https://message.bilibili.com',
  'referer': 'https://message.bilibili.com/',
  'sec-ch-ua': '"Chromium";v="116", "Not)A;Brand";v="24", "Google Chrome";v="116"',
  'sec-ch-ua-mobile': '?0',
  'sec-ch-ua-platform': '"macOS"',
  'sec-fetch-dest': 'empty',
  'sec-fetch-mode': 'cors',
  'sec-fetch-site': 'same-site',
  'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36',
  };
}