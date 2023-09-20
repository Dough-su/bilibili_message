import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/emoji_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/emoji_entity.g.dart';

@JsonSerializable()
class EmojiEntity {
	int? code;
	String? message;
	int? ttl;
	EmojiData? data;

	EmojiEntity();

	factory EmojiEntity.fromJson(Map<String, dynamic> json) => $EmojiEntityFromJson(json);

	Map<String, dynamic> toJson() => $EmojiEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiData {
	EmojiDataSetting? setting;
	List<EmojiDataPackages>? packages;

	EmojiData();

	factory EmojiData.fromJson(Map<String, dynamic> json) => $EmojiDataFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataSetting {
	@JSONField(name: "recent_limit")
	int? recentLimit;
	int? attr;
	@JSONField(name: "focus_pkg_id")
	int? focusPkgId;
	String? schema;

	EmojiDataSetting();

	factory EmojiDataSetting.fromJson(Map<String, dynamic> json) => $EmojiDataSettingFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataSettingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataPackages {
	int? id;
	String? text;
	String? url;
	int? mtime;
	int? type;
	int? attr;
	EmojiDataPackagesMeta? meta;
	List<EmojiDataPackagesEmote>? emote;
	EmojiDataPackagesFlags? flags;
	dynamic label;
	@JSONField(name: "package_sub_title")
	String? packageSubTitle;
	@JSONField(name: "ref_mid")
	int? refMid;

	EmojiDataPackages();

	factory EmojiDataPackages.fromJson(Map<String, dynamic> json) => $EmojiDataPackagesFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataPackagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataPackagesMeta {
	int? size;
	@JSONField(name: "item_id")
	int? itemId;

	EmojiDataPackagesMeta();

	factory EmojiDataPackagesMeta.fromJson(Map<String, dynamic> json) => $EmojiDataPackagesMetaFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataPackagesMetaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataPackagesEmote {
	int? id;
	@JSONField(name: "package_id")
	int? packageId;
	String? text;
	String? url;
	int? mtime;
	int? type;
	int? attr;
	EmojiDataPackagesEmoteMeta? meta;
	EmojiDataPackagesEmoteFlags? flags;
	dynamic activity;

	EmojiDataPackagesEmote();

	factory EmojiDataPackagesEmote.fromJson(Map<String, dynamic> json) => $EmojiDataPackagesEmoteFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataPackagesEmoteToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataPackagesEmoteMeta {
	int? size;
	List<String>? suggest;

	EmojiDataPackagesEmoteMeta();

	factory EmojiDataPackagesEmoteMeta.fromJson(Map<String, dynamic> json) => $EmojiDataPackagesEmoteMetaFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataPackagesEmoteMetaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataPackagesEmoteFlags {
	bool? unlocked;

	EmojiDataPackagesEmoteFlags();

	factory EmojiDataPackagesEmoteFlags.fromJson(Map<String, dynamic> json) => $EmojiDataPackagesEmoteFlagsFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataPackagesEmoteFlagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EmojiDataPackagesFlags {
	bool? added;
	bool? preview;

	EmojiDataPackagesFlags();

	factory EmojiDataPackagesFlags.fromJson(Map<String, dynamic> json) => $EmojiDataPackagesFlagsFromJson(json);

	Map<String, dynamic> toJson() => $EmojiDataPackagesFlagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}