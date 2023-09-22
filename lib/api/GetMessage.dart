import 'package:dio/dio.dart';
import 'package:muse_siixn_i/GlobalInfo.dart';
import 'Baseurl.dart';
/// A class that handles fetching messages from the server.
class GetMessage {
  /// The default parameters for the API request.
  Map<String, String> params = {
    'sender_device_id': '1',
    'talker_id': '',
    'session_type': '1',
    'size': '200',
    'end_seqno': '0',
    'begin_seqno': '0',
    'build': '0',
    'mobi_app': 'web',
  };

  /// Fetches messages for a given user ID.
  ///
  /// Returns a [Map] containing the response data.
  Future<Map<String, dynamic>> getMessages(String userid) async {
    params['talker_id'] = userid;
    Dio dio = Dio();
    Response response = await dio.get(
        '${Baseurl.apivc}/svr_sync/v1/svr_sync/fetch_session_msgs',
        queryParameters: params,
        options: Options(headers: Global.headers,));
    Map<String, dynamic> data = response.data;
    return data;
  }
}
