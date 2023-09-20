import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/pic_response_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/pic_response_entity.g.dart';

@JsonSerializable()
class PicResponseEntity {
	int? code;
	int? message;
	int? ttl;
	PicResponseData? data;

	PicResponseEntity();

	factory PicResponseEntity.fromJson(Map<String, dynamic> json) => $PicResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $PicResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PicResponseData {
	@JSONField(name: "image_url")
	String? imageUrl;
	@JSONField(name: "image_width")
	int? imageWidth;
	@JSONField(name: "image_height")
	int? imageHeight;
	@JSONField(name: "img_size")
	double? imgSize;

	PicResponseData();

	factory PicResponseData.fromJson(Map<String, dynamic> json) => $PicResponseDataFromJson(json);

	Map<String, dynamic> toJson() => $PicResponseDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}