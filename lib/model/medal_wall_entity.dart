import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/medal_wall_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/medal_wall_entity.g.dart';

@JsonSerializable()
class MedalWallEntity {
	int? code;
	String? message;
	int? ttl;
	MedalWallData? data;

	MedalWallEntity();

	factory MedalWallEntity.fromJson(Map<String, dynamic> json) => $MedalWallEntityFromJson(json);

	Map<String, dynamic> toJson() => $MedalWallEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MedalWallData {
	List<MedalWallDataList>? list;
	int? count;
	@JSONField(name: "close_space_medal")
	int? closeSpaceMedal;
	@JSONField(name: "only_show_wearing")
	int? onlyShowWearing;
	String? name;
	String? icon;
	int? uid;
	int? level;

	MedalWallData();

	factory MedalWallData.fromJson(Map<String, dynamic> json) => $MedalWallDataFromJson(json);

	Map<String, dynamic> toJson() => $MedalWallDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MedalWallDataList {
	@JSONField(name: "medal_info")
	MedalWallDataListMedalInfo? medalInfo;
	@JSONField(name: "target_name")
	String? targetName;
	@JSONField(name: "target_icon")
	String? targetIcon;
	String? link;
	@JSONField(name: "live_status")
	int? liveStatus;
	int? official;

	MedalWallDataList();

	factory MedalWallDataList.fromJson(Map<String, dynamic> json) => $MedalWallDataListFromJson(json);

	Map<String, dynamic> toJson() => $MedalWallDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MedalWallDataListMedalInfo {
	@JSONField(name: "target_id")
	int? targetId;
	int? level;
	@JSONField(name: "medal_name")
	String? medalName;
	@JSONField(name: "medal_color_start")
	int? medalColorStart;
	@JSONField(name: "medal_color_end")
	int? medalColorEnd;
	@JSONField(name: "medal_color_border")
	int? medalColorBorder;
	@JSONField(name: "guard_level")
	int? guardLevel;
	@JSONField(name: "wearing_status")
	int? wearingStatus;
	@JSONField(name: "medal_id")
	int? medalId;
	int? intimacy;
	@JSONField(name: "next_intimacy")
	int? nextIntimacy;
	@JSONField(name: "today_feed")
	int? todayFeed;
	@JSONField(name: "day_limit")
	int? dayLimit;
	@JSONField(name: "guard_icon")
	String? guardIcon;
	@JSONField(name: "honor_icon")
	String? honorIcon;

	MedalWallDataListMedalInfo();

	factory MedalWallDataListMedalInfo.fromJson(Map<String, dynamic> json) => $MedalWallDataListMedalInfoFromJson(json);

	Map<String, dynamic> toJson() => $MedalWallDataListMedalInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}