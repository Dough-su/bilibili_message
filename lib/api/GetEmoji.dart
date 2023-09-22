import 'package:dio/dio.dart';
import 'package:muse_siixn_i/api/Baseurl.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';

/// A class that provides a method to get emojis.
class GetEmoji {
  /// Returns a Future that resolves to a Map of emojis.
  ///
  /// The method sends a GET request to the Bilibili API to retrieve the emojis
  /// for the user panel on the web. The `business` parameter is set to `reply`.
  /// The `global.headers` are included in the request options.
  Future<Map<String, dynamic>> getEmojis() async {
    Dio dio = Dio();
    Response response = await dio.get(
        '${Baseurl.api}/x/emote/user/panel/web?business=reply',
        options: Options(headers: Global.headers));
    Map<String, dynamic> data = response.data;
    return data;
  }
}
