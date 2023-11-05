import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/zhuanlan_pic_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/zhuanlan_pic_entity.g.dart';

@JsonSerializable()
class ZhuanlanPicEntity {
	int? code;
	String? message;
	int? ttl;
	ZhuanlanPicData? data;

	ZhuanlanPicEntity();

	factory ZhuanlanPicEntity.fromJson(Map<String, dynamic> json) => $ZhuanlanPicEntityFromJson(json);

	Map<String, dynamic> toJson() => $ZhuanlanPicEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ZhuanlanPicData {
	int? size;
	String? url;

	ZhuanlanPicData();

	factory ZhuanlanPicData.fromJson(Map<String, dynamic> json) => $ZhuanlanPicDataFromJson(json);

	Map<String, dynamic> toJson() => $ZhuanlanPicDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}