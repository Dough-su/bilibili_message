import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/qrcode_status_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/qrcode_status_entity.g.dart';

@JsonSerializable()
class QrcodeStatusEntity {
	int? code;
	String? message;
	int? ttl;
	QrcodeStatusData? data;

	QrcodeStatusEntity();

	factory QrcodeStatusEntity.fromJson(Map<String, dynamic> json) => $QrcodeStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $QrcodeStatusEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class QrcodeStatusData {
	String? url;
	@JSONField(name: "refresh_token")
	String? refreshToken;
	int? timestamp;
	int? code;
	String? message;

	QrcodeStatusData();

	factory QrcodeStatusData.fromJson(Map<String, dynamic> json) => $QrcodeStatusDataFromJson(json);

	Map<String, dynamic> toJson() => $QrcodeStatusDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}