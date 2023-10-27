import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/qrcode_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/qrcode_entity.g.dart';

@JsonSerializable()
class QrcodeEntity {
	int? code;
	String? message;
	int? ttl;
	QrcodeData? data;

	QrcodeEntity();

	factory QrcodeEntity.fromJson(Map<String, dynamic> json) => $QrcodeEntityFromJson(json);

	Map<String, dynamic> toJson() => $QrcodeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class QrcodeData {
	String? url;
	@JSONField(name: "qrcode_key")
	String? qrcodeKey;

	QrcodeData();

	factory QrcodeData.fromJson(Map<String, dynamic> json) => $QrcodeDataFromJson(json);

	Map<String, dynamic> toJson() => $QrcodeDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}