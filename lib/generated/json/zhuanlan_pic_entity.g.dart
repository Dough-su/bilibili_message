import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/zhuanlan_pic_entity.dart';

ZhuanlanPicEntity $ZhuanlanPicEntityFromJson(Map<String, dynamic> json) {
  final ZhuanlanPicEntity zhuanlanPicEntity = ZhuanlanPicEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    zhuanlanPicEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    zhuanlanPicEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    zhuanlanPicEntity.ttl = ttl;
  }
  final ZhuanlanPicData? data = jsonConvert.convert<ZhuanlanPicData>(
      json['data']);
  if (data != null) {
    zhuanlanPicEntity.data = data;
  }
  return zhuanlanPicEntity;
}

Map<String, dynamic> $ZhuanlanPicEntityToJson(ZhuanlanPicEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension ZhuanlanPicEntityExtension on ZhuanlanPicEntity {
  ZhuanlanPicEntity copyWith({
    int? code,
    String? message,
    int? ttl,
    ZhuanlanPicData? data,
  }) {
    return ZhuanlanPicEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

ZhuanlanPicData $ZhuanlanPicDataFromJson(Map<String, dynamic> json) {
  final ZhuanlanPicData zhuanlanPicData = ZhuanlanPicData();
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    zhuanlanPicData.size = size;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    zhuanlanPicData.url = url;
  }
  return zhuanlanPicData;
}

Map<String, dynamic> $ZhuanlanPicDataToJson(ZhuanlanPicData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['url'] = entity.url;
  return data;
}

extension ZhuanlanPicDataExtension on ZhuanlanPicData {
  ZhuanlanPicData copyWith({
    int? size,
    String? url,
  }) {
    return ZhuanlanPicData()
      ..size = size ?? this.size
      ..url = url ?? this.url;
  }
}