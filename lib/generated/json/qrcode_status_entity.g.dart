import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/qrcode_status_entity.dart';

QrcodeStatusEntity $QrcodeStatusEntityFromJson(Map<String, dynamic> json) {
  final QrcodeStatusEntity qrcodeStatusEntity = QrcodeStatusEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    qrcodeStatusEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    qrcodeStatusEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    qrcodeStatusEntity.ttl = ttl;
  }
  final QrcodeStatusData? data = jsonConvert.convert<QrcodeStatusData>(
      json['data']);
  if (data != null) {
    qrcodeStatusEntity.data = data;
  }
  return qrcodeStatusEntity;
}

Map<String, dynamic> $QrcodeStatusEntityToJson(QrcodeStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension QrcodeStatusEntityExtension on QrcodeStatusEntity {
  QrcodeStatusEntity copyWith({
    int? code,
    String? message,
    int? ttl,
    QrcodeStatusData? data,
  }) {
    return QrcodeStatusEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

QrcodeStatusData $QrcodeStatusDataFromJson(Map<String, dynamic> json) {
  final QrcodeStatusData qrcodeStatusData = QrcodeStatusData();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    qrcodeStatusData.url = url;
  }
  final String? refreshToken = jsonConvert.convert<String>(
      json['refresh_token']);
  if (refreshToken != null) {
    qrcodeStatusData.refreshToken = refreshToken;
  }
  final int? timestamp = jsonConvert.convert<int>(json['timestamp']);
  if (timestamp != null) {
    qrcodeStatusData.timestamp = timestamp;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    qrcodeStatusData.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    qrcodeStatusData.message = message;
  }
  return qrcodeStatusData;
}

Map<String, dynamic> $QrcodeStatusDataToJson(QrcodeStatusData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['refresh_token'] = entity.refreshToken;
  data['timestamp'] = entity.timestamp;
  data['code'] = entity.code;
  data['message'] = entity.message;
  return data;
}

extension QrcodeStatusDataExtension on QrcodeStatusData {
  QrcodeStatusData copyWith({
    String? url,
    String? refreshToken,
    int? timestamp,
    int? code,
    String? message,
  }) {
    return QrcodeStatusData()
      ..url = url ?? this.url
      ..refreshToken = refreshToken ?? this.refreshToken
      ..timestamp = timestamp ?? this.timestamp
      ..code = code ?? this.code
      ..message = message ?? this.message;
  }
}