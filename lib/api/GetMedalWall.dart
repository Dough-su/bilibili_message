import 'package:dio/dio.dart';
import 'package:muse_siixn_i/api/Baseurl.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
/// This class is responsible for getting the medal wall of a user and checking if a certain target ID has a medal with a level of 4 or higher.
/// The [params] field is a map that contains the parameters needed for the API request.
/// The [getMedalWalls] method takes in a [userid] and a [targetId] and returns a [Future<bool>] that indicates whether the target ID has a medal with a level of 4 or higher.
/// It sets the 'talker_id' parameter in the [params] map to the [userid] parameter and sends a GET request to the MedalWall API endpoint using the Dio package.
/// If the response code is not 0, it returns false. Otherwise, it checks the medal list in the response data and returns true if it finds a medal with the target ID and a level of 4 or higher, otherwise it returns false.
class GetMedalWall {
  Map<String, String> params = {
    'target_id': Global.dedeUserID,
  };

  Future<bool> getMedalWalls(String userid, String targetId) async {
    params['talker_id'] = userid;
    Dio dio = Dio();
    Response response = await dio.get(
        '${Baseurl.live}/xlive/web-ucenter/user/MedalWall',
        queryParameters: params,
        options: Options(headers: Global.headers));
    Map<String, dynamic> data = response.data;
    if (data['code'] != 0) {
      return false;
    } else {
      var medalList = data['data']['list'];
      for (var i = 0; i < medalList.length; i++) {
        if (medalList[i]['medal_info']['target_id'].toString() ==
                targetId.toString() &&
            medalList[i]['medal_info']['level'] >= 4) {
          return true;
        }
      }
      return false;
    }
  }
}
