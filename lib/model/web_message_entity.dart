import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/web_message_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/web_message_entity.g.dart';

@JsonSerializable()
class WebMessageEntity {
	int? code;
	String? msg;
	String? message;
	int? ttl;
	WebMessageData? data;

	WebMessageEntity();

	factory WebMessageEntity.fromJson(Map<String, dynamic> json) => $WebMessageEntityFromJson(json);

	Map<String, dynamic> toJson() => $WebMessageEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WebMessageData {
	List<WebMessageDataMessages>? messages;
	@JSONField(name: "has_more")
	int? hasMore;
	@JSONField(name: "min_seqno")
	int? minSeqno;
	@JSONField(name: "max_seqno")
	int? maxSeqno;
	@JSONField(name: "e_infos")
	List<WebMessageDataEInfos>? eInfos;

	WebMessageData();

	factory WebMessageData.fromJson(Map<String, dynamic> json) => $WebMessageDataFromJson(json);

	Map<String, dynamic> toJson() => $WebMessageDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WebMessageDataMessages {
	@JSONField(name: "sender_uid")
	int? senderUid;
	@JSONField(name: "receiver_type")
	int? receiverType;
	@JSONField(name: "receiver_id")
	int? receiverId;
	@JSONField(name: "msg_type")
	int? msgType;
	String? content;
	@JSONField(name: "msg_seqno")
	int? msgSeqno;
	int? timestamp;
	@JSONField(name: "at_uids")
	List<int>? atUids;
	@JSONField(name: "msg_key")
	int? msgKey;
	@JSONField(name: "msg_status")
	int? msgStatus;
	@JSONField(name: "notify_code")
	String? notifyCode;
	@JSONField(name: "new_face_version")
	int? newFaceVersion;

	WebMessageDataMessages();

	factory WebMessageDataMessages.fromJson(Map<String, dynamic> json) => $WebMessageDataMessagesFromJson(json);

	Map<String, dynamic> toJson() => $WebMessageDataMessagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WebMessageDataEInfos {
	String? text;
	String? url;
	int? size;

	WebMessageDataEInfos();

	factory WebMessageDataEInfos.fromJson(Map<String, dynamic> json) => $WebMessageDataEInfosFromJson(json);

	Map<String, dynamic> toJson() => $WebMessageDataEInfosToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}