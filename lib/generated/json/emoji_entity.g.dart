import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/emoji_entity.dart';

EmojiEntity $EmojiEntityFromJson(Map<String, dynamic> json) {
  final EmojiEntity emojiEntity = EmojiEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    emojiEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    emojiEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    emojiEntity.ttl = ttl;
  }
  final EmojiData? data = jsonConvert.convert<EmojiData>(json['data']);
  if (data != null) {
    emojiEntity.data = data;
  }
  return emojiEntity;
}

Map<String, dynamic> $EmojiEntityToJson(EmojiEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension EmojiEntityExtension on EmojiEntity {
  EmojiEntity copyWith({
    int? code,
    String? message,
    int? ttl,
    EmojiData? data,
  }) {
    return EmojiEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

EmojiData $EmojiDataFromJson(Map<String, dynamic> json) {
  final EmojiData emojiData = EmojiData();
  final EmojiDataSetting? setting = jsonConvert.convert<EmojiDataSetting>(
      json['setting']);
  if (setting != null) {
    emojiData.setting = setting;
  }
  final List<EmojiDataPackages>? packages = (json['packages'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<EmojiDataPackages>(e) as EmojiDataPackages)
      .toList();
  if (packages != null) {
    emojiData.packages = packages;
  }
  return emojiData;
}

Map<String, dynamic> $EmojiDataToJson(EmojiData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['setting'] = entity.setting?.toJson();
  data['packages'] = entity.packages?.map((v) => v.toJson()).toList();
  return data;
}

extension EmojiDataExtension on EmojiData {
  EmojiData copyWith({
    EmojiDataSetting? setting,
    List<EmojiDataPackages>? packages,
  }) {
    return EmojiData()
      ..setting = setting ?? this.setting
      ..packages = packages ?? this.packages;
  }
}

EmojiDataSetting $EmojiDataSettingFromJson(Map<String, dynamic> json) {
  final EmojiDataSetting emojiDataSetting = EmojiDataSetting();
  final int? recentLimit = jsonConvert.convert<int>(json['recent_limit']);
  if (recentLimit != null) {
    emojiDataSetting.recentLimit = recentLimit;
  }
  final int? attr = jsonConvert.convert<int>(json['attr']);
  if (attr != null) {
    emojiDataSetting.attr = attr;
  }
  final int? focusPkgId = jsonConvert.convert<int>(json['focus_pkg_id']);
  if (focusPkgId != null) {
    emojiDataSetting.focusPkgId = focusPkgId;
  }
  final String? schema = jsonConvert.convert<String>(json['schema']);
  if (schema != null) {
    emojiDataSetting.schema = schema;
  }
  return emojiDataSetting;
}

Map<String, dynamic> $EmojiDataSettingToJson(EmojiDataSetting entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['recent_limit'] = entity.recentLimit;
  data['attr'] = entity.attr;
  data['focus_pkg_id'] = entity.focusPkgId;
  data['schema'] = entity.schema;
  return data;
}

extension EmojiDataSettingExtension on EmojiDataSetting {
  EmojiDataSetting copyWith({
    int? recentLimit,
    int? attr,
    int? focusPkgId,
    String? schema,
  }) {
    return EmojiDataSetting()
      ..recentLimit = recentLimit ?? this.recentLimit
      ..attr = attr ?? this.attr
      ..focusPkgId = focusPkgId ?? this.focusPkgId
      ..schema = schema ?? this.schema;
  }
}

EmojiDataPackages $EmojiDataPackagesFromJson(Map<String, dynamic> json) {
  final EmojiDataPackages emojiDataPackages = EmojiDataPackages();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    emojiDataPackages.id = id;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    emojiDataPackages.text = text;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    emojiDataPackages.url = url;
  }
  final int? mtime = jsonConvert.convert<int>(json['mtime']);
  if (mtime != null) {
    emojiDataPackages.mtime = mtime;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    emojiDataPackages.type = type;
  }
  final int? attr = jsonConvert.convert<int>(json['attr']);
  if (attr != null) {
    emojiDataPackages.attr = attr;
  }
  final EmojiDataPackagesMeta? meta = jsonConvert.convert<
      EmojiDataPackagesMeta>(json['meta']);
  if (meta != null) {
    emojiDataPackages.meta = meta;
  }
  final List<EmojiDataPackagesEmote>? emote = (json['emote'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<EmojiDataPackagesEmote>(e) as EmojiDataPackagesEmote)
      .toList();
  if (emote != null) {
    emojiDataPackages.emote = emote;
  }
  final EmojiDataPackagesFlags? flags = jsonConvert.convert<
      EmojiDataPackagesFlags>(json['flags']);
  if (flags != null) {
    emojiDataPackages.flags = flags;
  }
  final dynamic label = json['label'];
  if (label != null) {
    emojiDataPackages.label = label;
  }
  final String? packageSubTitle = jsonConvert.convert<String>(
      json['package_sub_title']);
  if (packageSubTitle != null) {
    emojiDataPackages.packageSubTitle = packageSubTitle;
  }
  final int? refMid = jsonConvert.convert<int>(json['ref_mid']);
  if (refMid != null) {
    emojiDataPackages.refMid = refMid;
  }
  return emojiDataPackages;
}

Map<String, dynamic> $EmojiDataPackagesToJson(EmojiDataPackages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['text'] = entity.text;
  data['url'] = entity.url;
  data['mtime'] = entity.mtime;
  data['type'] = entity.type;
  data['attr'] = entity.attr;
  data['meta'] = entity.meta?.toJson();
  data['emote'] = entity.emote?.map((v) => v.toJson()).toList();
  data['flags'] = entity.flags?.toJson();
  data['label'] = entity.label;
  data['package_sub_title'] = entity.packageSubTitle;
  data['ref_mid'] = entity.refMid;
  return data;
}

extension EmojiDataPackagesExtension on EmojiDataPackages {
  EmojiDataPackages copyWith({
    int? id,
    String? text,
    String? url,
    int? mtime,
    int? type,
    int? attr,
    EmojiDataPackagesMeta? meta,
    List<EmojiDataPackagesEmote>? emote,
    EmojiDataPackagesFlags? flags,
    dynamic label,
    String? packageSubTitle,
    int? refMid,
  }) {
    return EmojiDataPackages()
      ..id = id ?? this.id
      ..text = text ?? this.text
      ..url = url ?? this.url
      ..mtime = mtime ?? this.mtime
      ..type = type ?? this.type
      ..attr = attr ?? this.attr
      ..meta = meta ?? this.meta
      ..emote = emote ?? this.emote
      ..flags = flags ?? this.flags
      ..label = label ?? this.label
      ..packageSubTitle = packageSubTitle ?? this.packageSubTitle
      ..refMid = refMid ?? this.refMid;
  }
}

EmojiDataPackagesMeta $EmojiDataPackagesMetaFromJson(
    Map<String, dynamic> json) {
  final EmojiDataPackagesMeta emojiDataPackagesMeta = EmojiDataPackagesMeta();
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    emojiDataPackagesMeta.size = size;
  }
  final int? itemId = jsonConvert.convert<int>(json['item_id']);
  if (itemId != null) {
    emojiDataPackagesMeta.itemId = itemId;
  }
  return emojiDataPackagesMeta;
}

Map<String, dynamic> $EmojiDataPackagesMetaToJson(
    EmojiDataPackagesMeta entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['item_id'] = entity.itemId;
  return data;
}

extension EmojiDataPackagesMetaExtension on EmojiDataPackagesMeta {
  EmojiDataPackagesMeta copyWith({
    int? size,
    int? itemId,
  }) {
    return EmojiDataPackagesMeta()
      ..size = size ?? this.size
      ..itemId = itemId ?? this.itemId;
  }
}

EmojiDataPackagesEmote $EmojiDataPackagesEmoteFromJson(
    Map<String, dynamic> json) {
  final EmojiDataPackagesEmote emojiDataPackagesEmote = EmojiDataPackagesEmote();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    emojiDataPackagesEmote.id = id;
  }
  final int? packageId = jsonConvert.convert<int>(json['package_id']);
  if (packageId != null) {
    emojiDataPackagesEmote.packageId = packageId;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    emojiDataPackagesEmote.text = text;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    emojiDataPackagesEmote.url = url;
  }
  final int? mtime = jsonConvert.convert<int>(json['mtime']);
  if (mtime != null) {
    emojiDataPackagesEmote.mtime = mtime;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    emojiDataPackagesEmote.type = type;
  }
  final int? attr = jsonConvert.convert<int>(json['attr']);
  if (attr != null) {
    emojiDataPackagesEmote.attr = attr;
  }
  final EmojiDataPackagesEmoteMeta? meta = jsonConvert.convert<
      EmojiDataPackagesEmoteMeta>(json['meta']);
  if (meta != null) {
    emojiDataPackagesEmote.meta = meta;
  }
  final EmojiDataPackagesEmoteFlags? flags = jsonConvert.convert<
      EmojiDataPackagesEmoteFlags>(json['flags']);
  if (flags != null) {
    emojiDataPackagesEmote.flags = flags;
  }
  final dynamic activity = json['activity'];
  if (activity != null) {
    emojiDataPackagesEmote.activity = activity;
  }
  return emojiDataPackagesEmote;
}

Map<String, dynamic> $EmojiDataPackagesEmoteToJson(
    EmojiDataPackagesEmote entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['package_id'] = entity.packageId;
  data['text'] = entity.text;
  data['url'] = entity.url;
  data['mtime'] = entity.mtime;
  data['type'] = entity.type;
  data['attr'] = entity.attr;
  data['meta'] = entity.meta?.toJson();
  data['flags'] = entity.flags?.toJson();
  data['activity'] = entity.activity;
  return data;
}

extension EmojiDataPackagesEmoteExtension on EmojiDataPackagesEmote {
  EmojiDataPackagesEmote copyWith({
    int? id,
    int? packageId,
    String? text,
    String? url,
    int? mtime,
    int? type,
    int? attr,
    EmojiDataPackagesEmoteMeta? meta,
    EmojiDataPackagesEmoteFlags? flags,
    dynamic activity,
  }) {
    return EmojiDataPackagesEmote()
      ..id = id ?? this.id
      ..packageId = packageId ?? this.packageId
      ..text = text ?? this.text
      ..url = url ?? this.url
      ..mtime = mtime ?? this.mtime
      ..type = type ?? this.type
      ..attr = attr ?? this.attr
      ..meta = meta ?? this.meta
      ..flags = flags ?? this.flags
      ..activity = activity ?? this.activity;
  }
}

EmojiDataPackagesEmoteMeta $EmojiDataPackagesEmoteMetaFromJson(
    Map<String, dynamic> json) {
  final EmojiDataPackagesEmoteMeta emojiDataPackagesEmoteMeta = EmojiDataPackagesEmoteMeta();
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    emojiDataPackagesEmoteMeta.size = size;
  }
  final List<String>? suggest = (json['suggest'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (suggest != null) {
    emojiDataPackagesEmoteMeta.suggest = suggest;
  }
  return emojiDataPackagesEmoteMeta;
}

Map<String, dynamic> $EmojiDataPackagesEmoteMetaToJson(
    EmojiDataPackagesEmoteMeta entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['suggest'] = entity.suggest;
  return data;
}

extension EmojiDataPackagesEmoteMetaExtension on EmojiDataPackagesEmoteMeta {
  EmojiDataPackagesEmoteMeta copyWith({
    int? size,
    List<String>? suggest,
  }) {
    return EmojiDataPackagesEmoteMeta()
      ..size = size ?? this.size
      ..suggest = suggest ?? this.suggest;
  }
}

EmojiDataPackagesEmoteFlags $EmojiDataPackagesEmoteFlagsFromJson(
    Map<String, dynamic> json) {
  final EmojiDataPackagesEmoteFlags emojiDataPackagesEmoteFlags = EmojiDataPackagesEmoteFlags();
  final bool? unlocked = jsonConvert.convert<bool>(json['unlocked']);
  if (unlocked != null) {
    emojiDataPackagesEmoteFlags.unlocked = unlocked;
  }
  return emojiDataPackagesEmoteFlags;
}

Map<String, dynamic> $EmojiDataPackagesEmoteFlagsToJson(
    EmojiDataPackagesEmoteFlags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['unlocked'] = entity.unlocked;
  return data;
}

extension EmojiDataPackagesEmoteFlagsExtension on EmojiDataPackagesEmoteFlags {
  EmojiDataPackagesEmoteFlags copyWith({
    bool? unlocked,
  }) {
    return EmojiDataPackagesEmoteFlags()
      ..unlocked = unlocked ?? this.unlocked;
  }
}

EmojiDataPackagesFlags $EmojiDataPackagesFlagsFromJson(
    Map<String, dynamic> json) {
  final EmojiDataPackagesFlags emojiDataPackagesFlags = EmojiDataPackagesFlags();
  final bool? added = jsonConvert.convert<bool>(json['added']);
  if (added != null) {
    emojiDataPackagesFlags.added = added;
  }
  final bool? preview = jsonConvert.convert<bool>(json['preview']);
  if (preview != null) {
    emojiDataPackagesFlags.preview = preview;
  }
  return emojiDataPackagesFlags;
}

Map<String, dynamic> $EmojiDataPackagesFlagsToJson(
    EmojiDataPackagesFlags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['added'] = entity.added;
  data['preview'] = entity.preview;
  return data;
}

extension EmojiDataPackagesFlagsExtension on EmojiDataPackagesFlags {
  EmojiDataPackagesFlags copyWith({
    bool? added,
    bool? preview,
  }) {
    return EmojiDataPackagesFlags()
      ..added = added ?? this.added
      ..preview = preview ?? this.preview;
  }
}