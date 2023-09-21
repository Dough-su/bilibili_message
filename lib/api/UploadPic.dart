import 'package:dio/dio.dart';
import 'package:muse_siixn_i/api/SendMessage.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'Baseurl.dart';
/// This class provides a method to upload an image to Bilibili's dynamic feed.
/// It takes in the user ID, image bytes, context, and type as parameters.
/// The `uploadPics` method returns a Future<bool> indicating whether the upload was successful or not.
/// The `headers` field contains the necessary headers for the API request.
/// The `FormData` object is created from the image bytes and other required parameters.
/// The `Dio` object is used to make the API request with the headers and form data.
/// The response is then used to send a message to the user with the uploaded image URL and other information.
class UploadPic {
  Map<String, String> headers = {
    'authority': 'api.bilibili.com',
    'dnt': '1',
    'cookie': '',
  };

  Future<bool> uploadPics(String userid, bytes, context, int type) async {
    Dio dio = Dio();
    headers['cookie'] = Global.cookie;
    FormData formData = FormData.fromMap({
      'file_up': MultipartFile.fromBytes(
        bytes,
        filename: '1.png',
      ),
      'biz': 'im',
      'csrf': Global.biliJct,
      'build': '0',
      'mobi_app': 'web',
    });

    dio.options.headers = headers;

    Response response = await dio.post(
      '${Baseurl.api}/x/dynamic/feed/draw/upload_bfs',
      data: formData,
    );
    return type == 1
        ? await SendMessage().sendMessages(
            userid,
            '2',
            '{"url":"${response.data['data']['image_url']}", "size": ${response.data['data']['img_size']},"width": ${response.data['data']['image_width']},"height": ${response.data['data']['image_height']}}',
            context)
        : await SendMessage().sendMessages(
            userid,
            '7',
            '{"id":"0","source":5,"thumb":"${response.data['data']['image_url']}"}',
            context);
  }
}
