import 'package:dio/dio.dart';
import 'package:muse_siixn_i/api/Baseurl.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
/// This class is responsible for getting the medal wall of a user and checking if a certain target ID has a medal with a level of 4 or higher.
/// The [params] field is a map that contains the parameters needed for the API request.
/// The [GetQrcodes] method takes in a [userid] and a [targetId] and returns a [Future<bool>] that indicates whether the target ID has a medal with a level of 4 or higher.
/// It sets the 'talker_id' parameter in the [params] map to the [userid] parameter and sends a GET request to the MedalWall API endpoint using the Dio package.
/// If the response code is not 0, it returns false. Otherwise, it checks the medal list in the response data and returns true if it finds a medal with the target ID and a level of 4 or higher, otherwise it returns false.
class GetQrcode {
  Future<String> GetQrcodes() async {
    Dio dio = Dio();
    Response response = await dio.get(
        '${Baseurl.passport}/x/passport-login/web/qrcode/generate?source=main-fe-header',
        options: Options(headers: Global.headers));
    Map<String, dynamic> data = response.data;
    print(data);
    if (data['code'] != 0) {
      return 'error';
    } else {
      print(data['data']['url']);
      }
      return data['data']['url'];
    }
  }

