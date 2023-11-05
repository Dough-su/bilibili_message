import 'package:dio/dio.dart';
import 'package:muse_siixn_i/api/SendMessage.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'Baseurl.dart';
import 'package:http_parser/http_parser.dart';
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
  'binary': MultipartFile.fromBytes(
    bytes,
    filename: 'image.png',
    contentType: MediaType('image', 'png'),
  ),
  'csrf': Global.biliJct,
});

dio.options.headers = headers;

Response response = await dio.post(
  '${Baseurl.api}/x/article/creative/article/upcover',
  data: formData,
);

    print(response.data);
    return type == 1
        ? await SendMessage().sendMessages(
            userid,
            '2',
            '{"url":"${response.data['data']['url']}", "size": ${response.data['data']['img_size']},"width": ${response.data['data']['image_width']},"height": ${response.data['data']['image_height']}}',
            context)
        : await SendMessage().sendMessages(
            userid,
            '7',
            '{"id":"216794","title":"手机端点我查看大图哦~","url":"bilibili://browser?url=${response.data['data']['url']}","headline":"点开看大图哦~","source":16,"extra":{},"thumb":"${response.data['data']['url']}","author_id":"","source_desc":"手机端点我查看大图哦~"}',
            context);
  }
}
