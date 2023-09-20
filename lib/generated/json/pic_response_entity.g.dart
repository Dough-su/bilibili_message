import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/pic_response_entity.dart';

PicResponseEntity $PicResponseEntityFromJson(Map<String, dynamic> json) {
  final PicResponseEntity picResponseEntity = PicResponseEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    picResponseEntity.code = code;
  }
  final int? message = jsonConvert.convert<int>(json['message']);
  if (message != null) {
    picResponseEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    picResponseEntity.ttl = ttl;
  }
  final PicResponseData? data = jsonConvert.convert<PicResponseData>(
      json['data']);
  if (data != null) {
    picResponseEntity.data = data;
  }
  return picResponseEntity;
}

Map<String, dynamic> $PicResponseEntityToJson(PicResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension PicResponseEntityExtension on PicResponseEntity {
  PicResponseEntity copyWith({
    int? code,
    int? message,
    int? ttl,
    PicResponseData? data,
  }) {
    return PicResponseEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

PicResponseData $PicResponseDataFromJson(Map<String, dynamic> json) {
  final PicResponseData picResponseData = PicResponseData();
  final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
  if (imageUrl != null) {
    picResponseData.imageUrl = imageUrl;
  }
  final int? imageWidth = jsonConvert.convert<int>(json['image_width']);
  if (imageWidth != null) {
    picResponseData.imageWidth = imageWidth;
  }
  final int? imageHeight = jsonConvert.convert<int>(json['image_height']);
  if (imageHeight != null) {
    picResponseData.imageHeight = imageHeight;
  }
  final double? imgSize = jsonConvert.convert<double>(json['img_size']);
  if (imgSize != null) {
    picResponseData.imgSize = imgSize;
  }
  return picResponseData;
}

Map<String, dynamic> $PicResponseDataToJson(PicResponseData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image_url'] = entity.imageUrl;
  data['image_width'] = entity.imageWidth;
  data['image_height'] = entity.imageHeight;
  data['img_size'] = entity.imgSize;
  return data;
}

extension PicResponseDataExtension on PicResponseData {
  PicResponseData copyWith({
    String? imageUrl,
    int? imageWidth,
    int? imageHeight,
    double? imgSize,
  }) {
    return PicResponseData()
      ..imageUrl = imageUrl ?? this.imageUrl
      ..imageWidth = imageWidth ?? this.imageWidth
      ..imageHeight = imageHeight ?? this.imageHeight
      ..imgSize = imgSize ?? this.imgSize;
  }
}