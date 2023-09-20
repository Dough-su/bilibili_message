import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/web_message_entity.dart';

WebMessageEntity $WebMessageEntityFromJson(Map<String, dynamic> json) {
  final WebMessageEntity webMessageEntity = WebMessageEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    webMessageEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    webMessageEntity.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    webMessageEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    webMessageEntity.ttl = ttl;
  }
  final WebMessageData? data = jsonConvert.convert<WebMessageData>(
      json['data']);
  if (data != null) {
    webMessageEntity.data = data;
  }
  return webMessageEntity;
}

Map<String, dynamic> $WebMessageEntityToJson(WebMessageEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension WebMessageEntityExtension on WebMessageEntity {
  WebMessageEntity copyWith({
    int? code,
    String? msg,
    String? message,
    int? ttl,
    WebMessageData? data,
  }) {
    return WebMessageEntity()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

WebMessageData $WebMessageDataFromJson(Map<String, dynamic> json) {
  final WebMessageData webMessageData = WebMessageData();
  final List<WebMessageDataMessages>? messages = (json['messages'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<WebMessageDataMessages>(e) as WebMessageDataMessages)
      .toList();
  if (messages != null) {
    webMessageData.messages = messages;
  }
  final int? hasMore = jsonConvert.convert<int>(json['has_more']);
  if (hasMore != null) {
    webMessageData.hasMore = hasMore;
  }
  final int? minSeqno = jsonConvert.convert<int>(json['min_seqno']);
  if (minSeqno != null) {
    webMessageData.minSeqno = minSeqno;
  }
  final int? maxSeqno = jsonConvert.convert<int>(json['max_seqno']);
  if (maxSeqno != null) {
    webMessageData.maxSeqno = maxSeqno;
  }
  final List<WebMessageDataEInfos>? eInfos = (json['e_infos'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<WebMessageDataEInfos>(e) as WebMessageDataEInfos)
      .toList();
  if (eInfos != null) {
    webMessageData.eInfos = eInfos;
  }
  return webMessageData;
}

Map<String, dynamic> $WebMessageDataToJson(WebMessageData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['messages'] = entity.messages?.map((v) => v.toJson()).toList();
  data['has_more'] = entity.hasMore;
  data['min_seqno'] = entity.minSeqno;
  data['max_seqno'] = entity.maxSeqno;
  data['e_infos'] = entity.eInfos?.map((v) => v.toJson()).toList();
  return data;
}

extension WebMessageDataExtension on WebMessageData {
  WebMessageData copyWith({
    List<WebMessageDataMessages>? messages,
    int? hasMore,
    int? minSeqno,
    int? maxSeqno,
    List<WebMessageDataEInfos>? eInfos,
  }) {
    return WebMessageData()
      ..messages = messages ?? this.messages
      ..hasMore = hasMore ?? this.hasMore
      ..minSeqno = minSeqno ?? this.minSeqno
      ..maxSeqno = maxSeqno ?? this.maxSeqno
      ..eInfos = eInfos ?? this.eInfos;
  }
}

WebMessageDataMessages $WebMessageDataMessagesFromJson(
    Map<String, dynamic> json) {
  final WebMessageDataMessages webMessageDataMessages = WebMessageDataMessages();
  final int? senderUid = jsonConvert.convert<int>(json['sender_uid']);
  if (senderUid != null) {
    webMessageDataMessages.senderUid = senderUid;
  }
  final int? receiverType = jsonConvert.convert<int>(json['receiver_type']);
  if (receiverType != null) {
    webMessageDataMessages.receiverType = receiverType;
  }
  final int? receiverId = jsonConvert.convert<int>(json['receiver_id']);
  if (receiverId != null) {
    webMessageDataMessages.receiverId = receiverId;
  }
  final int? msgType = jsonConvert.convert<int>(json['msg_type']);
  if (msgType != null) {
    webMessageDataMessages.msgType = msgType;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    webMessageDataMessages.content = content;
  }
  final int? msgSeqno = jsonConvert.convert<int>(json['msg_seqno']);
  if (msgSeqno != null) {
    webMessageDataMessages.msgSeqno = msgSeqno;
  }
  final int? timestamp = jsonConvert.convert<int>(json['timestamp']);
  if (timestamp != null) {
    webMessageDataMessages.timestamp = timestamp;
  }
  final List<int>? atUids = (json['at_uids'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<int>(e) as int).toList();
  if (atUids != null) {
    webMessageDataMessages.atUids = atUids;
  }
  final int? msgKey = jsonConvert.convert<int>(json['msg_key']);
  if (msgKey != null) {
    webMessageDataMessages.msgKey = msgKey;
  }
  final int? msgStatus = jsonConvert.convert<int>(json['msg_status']);
  if (msgStatus != null) {
    webMessageDataMessages.msgStatus = msgStatus;
  }
  final String? notifyCode = jsonConvert.convert<String>(json['notify_code']);
  if (notifyCode != null) {
    webMessageDataMessages.notifyCode = notifyCode;
  }
  final int? newFaceVersion = jsonConvert.convert<int>(
      json['new_face_version']);
  if (newFaceVersion != null) {
    webMessageDataMessages.newFaceVersion = newFaceVersion;
  }
  return webMessageDataMessages;
}

Map<String, dynamic> $WebMessageDataMessagesToJson(
    WebMessageDataMessages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['sender_uid'] = entity.senderUid;
  data['receiver_type'] = entity.receiverType;
  data['receiver_id'] = entity.receiverId;
  data['msg_type'] = entity.msgType;
  data['content'] = entity.content;
  data['msg_seqno'] = entity.msgSeqno;
  data['timestamp'] = entity.timestamp;
  data['at_uids'] = entity.atUids;
  data['msg_key'] = entity.msgKey;
  data['msg_status'] = entity.msgStatus;
  data['notify_code'] = entity.notifyCode;
  data['new_face_version'] = entity.newFaceVersion;
  return data;
}

extension WebMessageDataMessagesExtension on WebMessageDataMessages {
  WebMessageDataMessages copyWith({
    int? senderUid,
    int? receiverType,
    int? receiverId,
    int? msgType,
    String? content,
    int? msgSeqno,
    int? timestamp,
    List<int>? atUids,
    int? msgKey,
    int? msgStatus,
    String? notifyCode,
    int? newFaceVersion,
  }) {
    return WebMessageDataMessages()
      ..senderUid = senderUid ?? this.senderUid
      ..receiverType = receiverType ?? this.receiverType
      ..receiverId = receiverId ?? this.receiverId
      ..msgType = msgType ?? this.msgType
      ..content = content ?? this.content
      ..msgSeqno = msgSeqno ?? this.msgSeqno
      ..timestamp = timestamp ?? this.timestamp
      ..atUids = atUids ?? this.atUids
      ..msgKey = msgKey ?? this.msgKey
      ..msgStatus = msgStatus ?? this.msgStatus
      ..notifyCode = notifyCode ?? this.notifyCode
      ..newFaceVersion = newFaceVersion ?? this.newFaceVersion;
  }
}

WebMessageDataEInfos $WebMessageDataEInfosFromJson(Map<String, dynamic> json) {
  final WebMessageDataEInfos webMessageDataEInfos = WebMessageDataEInfos();
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    webMessageDataEInfos.text = text;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    webMessageDataEInfos.url = url;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    webMessageDataEInfos.size = size;
  }
  return webMessageDataEInfos;
}

Map<String, dynamic> $WebMessageDataEInfosToJson(WebMessageDataEInfos entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['text'] = entity.text;
  data['url'] = entity.url;
  data['size'] = entity.size;
  return data;
}

extension WebMessageDataEInfosExtension on WebMessageDataEInfos {
  WebMessageDataEInfos copyWith({
    String? text,
    String? url,
    int? size,
  }) {
    return WebMessageDataEInfos()
      ..text = text ?? this.text
      ..url = url ?? this.url
      ..size = size ?? this.size;
  }
}