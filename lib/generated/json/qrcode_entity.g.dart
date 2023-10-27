import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/qrcode_entity.dart';

QrcodeEntity $QrcodeEntityFromJson(Map<String, dynamic> json) {
  final QrcodeEntity qrcodeEntity = QrcodeEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    qrcodeEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    qrcodeEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    qrcodeEntity.ttl = ttl;
  }
  final QrcodeData? data = jsonConvert.convert<QrcodeData>(json['data']);
  if (data != null) {
    qrcodeEntity.data = data;
  }
  return qrcodeEntity;
}

Map<String, dynamic> $QrcodeEntityToJson(QrcodeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension QrcodeEntityExtension on QrcodeEntity {
  QrcodeEntity copyWith({
    int? code,
    String? message,
    int? ttl,
    QrcodeData? data,
  }) {
    return QrcodeEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

QrcodeData $QrcodeDataFromJson(Map<String, dynamic> json) {
  final QrcodeData qrcodeData = QrcodeData();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    qrcodeData.url = url;
  }
  final String? qrcodeKey = jsonConvert.convert<String>(json['qrcode_key']);
  if (qrcodeKey != null) {
    qrcodeData.qrcodeKey = qrcodeKey;
  }
  return qrcodeData;
}

Map<String, dynamic> $QrcodeDataToJson(QrcodeData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['qrcode_key'] = entity.qrcodeKey;
  return data;
}

extension QrcodeDataExtension on QrcodeData {
  QrcodeData copyWith({
    String? url,
    String? qrcodeKey,
  }) {
    return QrcodeData()
      ..url = url ?? this.url
      ..qrcodeKey = qrcodeKey ?? this.qrcodeKey;
  }
}