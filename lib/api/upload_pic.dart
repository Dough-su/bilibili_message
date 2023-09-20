import 'package:dio/dio.dart';
import 'package:muse_siixn_i/api/send_message.dart';
import 'package:muse_siixn_i/global.dart';

class upload_pic {
  Map<String, String> headers = {
    'authority': 'api.bilibili.com',
    'dnt': '1',
    'cookie': '',
  };
  Future<bool> upload_pics(String userid, bytes,context) async {
    Dio dio = new Dio();
    headers['cookie'] = global.cookie;
    print(headers);
    FormData formData = FormData.fromMap({
      'file_up': await MultipartFile.fromBytes(
        bytes,
        filename: '第一个.png',
      ),
      'biz': 'im',
      'csrf': global.bili_jct,
      'build': '0',
      'mobi_app': 'web',
    });

    dio.options.headers = headers;

    Response response = await dio.post(
      'https://api.bilibili.com/x/dynamic/feed/draw/upload_bfs',
      data: formData,
    );
    print(response.data);
    return await send_message().send_messages(userid, '2', '{"url":"${response.data['data']['image_url']}", "size": ${response.data['data']['img_size']},"width": ${response.data['data']['image_width']},"height": ${response.data['data']['image_height']}}',context);

  }
}
