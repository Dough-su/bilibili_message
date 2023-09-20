import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/medal_wall_entity.dart';

MedalWallEntity $MedalWallEntityFromJson(Map<String, dynamic> json) {
  final MedalWallEntity medalWallEntity = MedalWallEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    medalWallEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    medalWallEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    medalWallEntity.ttl = ttl;
  }
  final MedalWallData? data = jsonConvert.convert<MedalWallData>(json['data']);
  if (data != null) {
    medalWallEntity.data = data;
  }
  return medalWallEntity;
}

Map<String, dynamic> $MedalWallEntityToJson(MedalWallEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension MedalWallEntityExtension on MedalWallEntity {
  MedalWallEntity copyWith({
    int? code,
    String? message,
    int? ttl,
    MedalWallData? data,
  }) {
    return MedalWallEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

MedalWallData $MedalWallDataFromJson(Map<String, dynamic> json) {
  final MedalWallData medalWallData = MedalWallData();
  final List<MedalWallDataList>? list = (json['list'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<MedalWallDataList>(e) as MedalWallDataList)
      .toList();
  if (list != null) {
    medalWallData.list = list;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    medalWallData.count = count;
  }
  final int? closeSpaceMedal = jsonConvert.convert<int>(
      json['close_space_medal']);
  if (closeSpaceMedal != null) {
    medalWallData.closeSpaceMedal = closeSpaceMedal;
  }
  final int? onlyShowWearing = jsonConvert.convert<int>(
      json['only_show_wearing']);
  if (onlyShowWearing != null) {
    medalWallData.onlyShowWearing = onlyShowWearing;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    medalWallData.name = name;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    medalWallData.icon = icon;
  }
  final int? uid = jsonConvert.convert<int>(json['uid']);
  if (uid != null) {
    medalWallData.uid = uid;
  }
  final int? level = jsonConvert.convert<int>(json['level']);
  if (level != null) {
    medalWallData.level = level;
  }
  return medalWallData;
}

Map<String, dynamic> $MedalWallDataToJson(MedalWallData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  data['count'] = entity.count;
  data['close_space_medal'] = entity.closeSpaceMedal;
  data['only_show_wearing'] = entity.onlyShowWearing;
  data['name'] = entity.name;
  data['icon'] = entity.icon;
  data['uid'] = entity.uid;
  data['level'] = entity.level;
  return data;
}

extension MedalWallDataExtension on MedalWallData {
  MedalWallData copyWith({
    List<MedalWallDataList>? list,
    int? count,
    int? closeSpaceMedal,
    int? onlyShowWearing,
    String? name,
    String? icon,
    int? uid,
    int? level,
  }) {
    return MedalWallData()
      ..list = list ?? this.list
      ..count = count ?? this.count
      ..closeSpaceMedal = closeSpaceMedal ?? this.closeSpaceMedal
      ..onlyShowWearing = onlyShowWearing ?? this.onlyShowWearing
      ..name = name ?? this.name
      ..icon = icon ?? this.icon
      ..uid = uid ?? this.uid
      ..level = level ?? this.level;
  }
}

MedalWallDataList $MedalWallDataListFromJson(Map<String, dynamic> json) {
  final MedalWallDataList medalWallDataList = MedalWallDataList();
  final MedalWallDataListMedalInfo? medalInfo = jsonConvert.convert<
      MedalWallDataListMedalInfo>(json['medal_info']);
  if (medalInfo != null) {
    medalWallDataList.medalInfo = medalInfo;
  }
  final String? targetName = jsonConvert.convert<String>(json['target_name']);
  if (targetName != null) {
    medalWallDataList.targetName = targetName;
  }
  final String? targetIcon = jsonConvert.convert<String>(json['target_icon']);
  if (targetIcon != null) {
    medalWallDataList.targetIcon = targetIcon;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    medalWallDataList.link = link;
  }
  final int? liveStatus = jsonConvert.convert<int>(json['live_status']);
  if (liveStatus != null) {
    medalWallDataList.liveStatus = liveStatus;
  }
  final int? official = jsonConvert.convert<int>(json['official']);
  if (official != null) {
    medalWallDataList.official = official;
  }
  return medalWallDataList;
}

Map<String, dynamic> $MedalWallDataListToJson(MedalWallDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['medal_info'] = entity.medalInfo?.toJson();
  data['target_name'] = entity.targetName;
  data['target_icon'] = entity.targetIcon;
  data['link'] = entity.link;
  data['live_status'] = entity.liveStatus;
  data['official'] = entity.official;
  return data;
}

extension MedalWallDataListExtension on MedalWallDataList {
  MedalWallDataList copyWith({
    MedalWallDataListMedalInfo? medalInfo,
    String? targetName,
    String? targetIcon,
    String? link,
    int? liveStatus,
    int? official,
  }) {
    return MedalWallDataList()
      ..medalInfo = medalInfo ?? this.medalInfo
      ..targetName = targetName ?? this.targetName
      ..targetIcon = targetIcon ?? this.targetIcon
      ..link = link ?? this.link
      ..liveStatus = liveStatus ?? this.liveStatus
      ..official = official ?? this.official;
  }
}

MedalWallDataListMedalInfo $MedalWallDataListMedalInfoFromJson(
    Map<String, dynamic> json) {
  final MedalWallDataListMedalInfo medalWallDataListMedalInfo = MedalWallDataListMedalInfo();
  final int? targetId = jsonConvert.convert<int>(json['target_id']);
  if (targetId != null) {
    medalWallDataListMedalInfo.targetId = targetId;
  }
  final int? level = jsonConvert.convert<int>(json['level']);
  if (level != null) {
    medalWallDataListMedalInfo.level = level;
  }
  final String? medalName = jsonConvert.convert<String>(json['medal_name']);
  if (medalName != null) {
    medalWallDataListMedalInfo.medalName = medalName;
  }
  final int? medalColorStart = jsonConvert.convert<int>(
      json['medal_color_start']);
  if (medalColorStart != null) {
    medalWallDataListMedalInfo.medalColorStart = medalColorStart;
  }
  final int? medalColorEnd = jsonConvert.convert<int>(json['medal_color_end']);
  if (medalColorEnd != null) {
    medalWallDataListMedalInfo.medalColorEnd = medalColorEnd;
  }
  final int? medalColorBorder = jsonConvert.convert<int>(
      json['medal_color_border']);
  if (medalColorBorder != null) {
    medalWallDataListMedalInfo.medalColorBorder = medalColorBorder;
  }
  final int? guardLevel = jsonConvert.convert<int>(json['guard_level']);
  if (guardLevel != null) {
    medalWallDataListMedalInfo.guardLevel = guardLevel;
  }
  final int? wearingStatus = jsonConvert.convert<int>(json['wearing_status']);
  if (wearingStatus != null) {
    medalWallDataListMedalInfo.wearingStatus = wearingStatus;
  }
  final int? medalId = jsonConvert.convert<int>(json['medal_id']);
  if (medalId != null) {
    medalWallDataListMedalInfo.medalId = medalId;
  }
  final int? intimacy = jsonConvert.convert<int>(json['intimacy']);
  if (intimacy != null) {
    medalWallDataListMedalInfo.intimacy = intimacy;
  }
  final int? nextIntimacy = jsonConvert.convert<int>(json['next_intimacy']);
  if (nextIntimacy != null) {
    medalWallDataListMedalInfo.nextIntimacy = nextIntimacy;
  }
  final int? todayFeed = jsonConvert.convert<int>(json['today_feed']);
  if (todayFeed != null) {
    medalWallDataListMedalInfo.todayFeed = todayFeed;
  }
  final int? dayLimit = jsonConvert.convert<int>(json['day_limit']);
  if (dayLimit != null) {
    medalWallDataListMedalInfo.dayLimit = dayLimit;
  }
  final String? guardIcon = jsonConvert.convert<String>(json['guard_icon']);
  if (guardIcon != null) {
    medalWallDataListMedalInfo.guardIcon = guardIcon;
  }
  final String? honorIcon = jsonConvert.convert<String>(json['honor_icon']);
  if (honorIcon != null) {
    medalWallDataListMedalInfo.honorIcon = honorIcon;
  }
  return medalWallDataListMedalInfo;
}

Map<String, dynamic> $MedalWallDataListMedalInfoToJson(
    MedalWallDataListMedalInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['target_id'] = entity.targetId;
  data['level'] = entity.level;
  data['medal_name'] = entity.medalName;
  data['medal_color_start'] = entity.medalColorStart;
  data['medal_color_end'] = entity.medalColorEnd;
  data['medal_color_border'] = entity.medalColorBorder;
  data['guard_level'] = entity.guardLevel;
  data['wearing_status'] = entity.wearingStatus;
  data['medal_id'] = entity.medalId;
  data['intimacy'] = entity.intimacy;
  data['next_intimacy'] = entity.nextIntimacy;
  data['today_feed'] = entity.todayFeed;
  data['day_limit'] = entity.dayLimit;
  data['guard_icon'] = entity.guardIcon;
  data['honor_icon'] = entity.honorIcon;
  return data;
}

extension MedalWallDataListMedalInfoExtension on MedalWallDataListMedalInfo {
  MedalWallDataListMedalInfo copyWith({
    int? targetId,
    int? level,
    String? medalName,
    int? medalColorStart,
    int? medalColorEnd,
    int? medalColorBorder,
    int? guardLevel,
    int? wearingStatus,
    int? medalId,
    int? intimacy,
    int? nextIntimacy,
    int? todayFeed,
    int? dayLimit,
    String? guardIcon,
    String? honorIcon,
  }) {
    return MedalWallDataListMedalInfo()
      ..targetId = targetId ?? this.targetId
      ..level = level ?? this.level
      ..medalName = medalName ?? this.medalName
      ..medalColorStart = medalColorStart ?? this.medalColorStart
      ..medalColorEnd = medalColorEnd ?? this.medalColorEnd
      ..medalColorBorder = medalColorBorder ?? this.medalColorBorder
      ..guardLevel = guardLevel ?? this.guardLevel
      ..wearingStatus = wearingStatus ?? this.wearingStatus
      ..medalId = medalId ?? this.medalId
      ..intimacy = intimacy ?? this.intimacy
      ..nextIntimacy = nextIntimacy ?? this.nextIntimacy
      ..todayFeed = todayFeed ?? this.todayFeed
      ..dayLimit = dayLimit ?? this.dayLimit
      ..guardIcon = guardIcon ?? this.guardIcon
      ..honorIcon = honorIcon ?? this.honorIcon;
  }
}