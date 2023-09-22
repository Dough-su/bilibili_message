import 'package:dio/dio.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'Baseurl.dart';

/// A class that provides a method to fetch dynamic feeds from a user's space on Bilibili.
class GetDongtai {
  /// Fetches dynamic feeds from a user's space on Bilibili.
  ///
  /// Returns a [Future] that completes with a [Map] containing dynamic feed data.
  /// The [userid] parameter is the user ID of the space to fetch dynamic feeds from.
  Future<Map<String, dynamic>> getDongtais(String userid) async {
    Dio dio = Dio();

    Response response = await dio.get(
        '${Baseurl.api}/x/polymer/web-dynamic/v1/feed/space?offset=&host_mid=${Global.dedeUserID}&timezone_offset=-480&features=itemOpusStyle,listOnlyfans',
        options: Options(headers: Global.headers));
    Map<String, dynamic> data = response.data;
    return data;
  }
}
