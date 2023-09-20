import 'package:muse_siixn_i/generated/json/base/json_convert_content.dart';
import 'package:muse_siixn_i/model/dongtai_response_entity.dart';

DongtaiResponseEntity $DongtaiResponseEntityFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseEntity dongtaiResponseEntity = DongtaiResponseEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    dongtaiResponseEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    dongtaiResponseEntity.message = message;
  }
  final int? ttl = jsonConvert.convert<int>(json['ttl']);
  if (ttl != null) {
    dongtaiResponseEntity.ttl = ttl;
  }
  final DongtaiResponseData? data = jsonConvert.convert<DongtaiResponseData>(
      json['data']);
  if (data != null) {
    dongtaiResponseEntity.data = data;
  }
  return dongtaiResponseEntity;
}

Map<String, dynamic> $DongtaiResponseEntityToJson(
    DongtaiResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['ttl'] = entity.ttl;
  data['data'] = entity.data?.toJson();
  return data;
}

extension DongtaiResponseEntityExtension on DongtaiResponseEntity {
  DongtaiResponseEntity copyWith({
    int? code,
    String? message,
    int? ttl,
    DongtaiResponseData? data,
  }) {
    return DongtaiResponseEntity()
      ..code = code ?? this.code
      ..message = message ?? this.message
      ..ttl = ttl ?? this.ttl
      ..data = data ?? this.data;
  }
}

DongtaiResponseData $DongtaiResponseDataFromJson(Map<String, dynamic> json) {
  final DongtaiResponseData dongtaiResponseData = DongtaiResponseData();
  final bool? hasMore = jsonConvert.convert<bool>(json['has_more']);
  if (hasMore != null) {
    dongtaiResponseData.hasMore = hasMore;
  }
  final List<DongtaiResponseDataItems>? items = (json['items'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DongtaiResponseDataItems>(
          e) as DongtaiResponseDataItems).toList();
  if (items != null) {
    dongtaiResponseData.items = items;
  }
  final String? offset = jsonConvert.convert<String>(json['offset']);
  if (offset != null) {
    dongtaiResponseData.offset = offset;
  }
  final String? updateBaseline = jsonConvert.convert<String>(
      json['update_baseline']);
  if (updateBaseline != null) {
    dongtaiResponseData.updateBaseline = updateBaseline;
  }
  final int? updateNum = jsonConvert.convert<int>(json['update_num']);
  if (updateNum != null) {
    dongtaiResponseData.updateNum = updateNum;
  }
  return dongtaiResponseData;
}

Map<String, dynamic> $DongtaiResponseDataToJson(DongtaiResponseData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['has_more'] = entity.hasMore;
  data['items'] = entity.items?.map((v) => v.toJson()).toList();
  data['offset'] = entity.offset;
  data['update_baseline'] = entity.updateBaseline;
  data['update_num'] = entity.updateNum;
  return data;
}

extension DongtaiResponseDataExtension on DongtaiResponseData {
  DongtaiResponseData copyWith({
    bool? hasMore,
    List<DongtaiResponseDataItems>? items,
    String? offset,
    String? updateBaseline,
    int? updateNum,
  }) {
    return DongtaiResponseData()
      ..hasMore = hasMore ?? this.hasMore
      ..items = items ?? this.items
      ..offset = offset ?? this.offset
      ..updateBaseline = updateBaseline ?? this.updateBaseline
      ..updateNum = updateNum ?? this.updateNum;
  }
}

DongtaiResponseDataItems $DongtaiResponseDataItemsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItems dongtaiResponseDataItems = DongtaiResponseDataItems();
  final DongtaiResponseDataItemsBasic? basic = jsonConvert.convert<
      DongtaiResponseDataItemsBasic>(json['basic']);
  if (basic != null) {
    dongtaiResponseDataItems.basic = basic;
  }
  final String? idStr = jsonConvert.convert<String>(json['id_str']);
  if (idStr != null) {
    dongtaiResponseDataItems.idStr = idStr;
  }
  final DongtaiResponseDataItemsModules? modules = jsonConvert.convert<
      DongtaiResponseDataItemsModules>(json['modules']);
  if (modules != null) {
    dongtaiResponseDataItems.modules = modules;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItems.type = type;
  }
  final bool? visible = jsonConvert.convert<bool>(json['visible']);
  if (visible != null) {
    dongtaiResponseDataItems.visible = visible;
  }
  final DongtaiResponseDataItemsOrig? orig = jsonConvert.convert<
      DongtaiResponseDataItemsOrig>(json['orig']);
  if (orig != null) {
    dongtaiResponseDataItems.orig = orig;
  }
  return dongtaiResponseDataItems;
}

Map<String, dynamic> $DongtaiResponseDataItemsToJson(
    DongtaiResponseDataItems entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['basic'] = entity.basic?.toJson();
  data['id_str'] = entity.idStr;
  data['modules'] = entity.modules?.toJson();
  data['type'] = entity.type;
  data['visible'] = entity.visible;
  data['orig'] = entity.orig?.toJson();
  return data;
}

extension DongtaiResponseDataItemsExtension on DongtaiResponseDataItems {
  DongtaiResponseDataItems copyWith({
    DongtaiResponseDataItemsBasic? basic,
    String? idStr,
    DongtaiResponseDataItemsModules? modules,
    String? type,
    bool? visible,
    DongtaiResponseDataItemsOrig? orig,
  }) {
    return DongtaiResponseDataItems()
      ..basic = basic ?? this.basic
      ..idStr = idStr ?? this.idStr
      ..modules = modules ?? this.modules
      ..type = type ?? this.type
      ..visible = visible ?? this.visible
      ..orig = orig ?? this.orig;
  }
}

DongtaiResponseDataItemsBasic $DongtaiResponseDataItemsBasicFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsBasic dongtaiResponseDataItemsBasic = DongtaiResponseDataItemsBasic();
  final String? commentIdStr = jsonConvert.convert<String>(
      json['comment_id_str']);
  if (commentIdStr != null) {
    dongtaiResponseDataItemsBasic.commentIdStr = commentIdStr;
  }
  final int? commentType = jsonConvert.convert<int>(json['comment_type']);
  if (commentType != null) {
    dongtaiResponseDataItemsBasic.commentType = commentType;
  }
  final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
  if (jumpUrl != null) {
    dongtaiResponseDataItemsBasic.jumpUrl = jumpUrl;
  }
  final DongtaiResponseDataItemsBasicLikeIcon? likeIcon = jsonConvert.convert<
      DongtaiResponseDataItemsBasicLikeIcon>(json['like_icon']);
  if (likeIcon != null) {
    dongtaiResponseDataItemsBasic.likeIcon = likeIcon;
  }
  final String? ridStr = jsonConvert.convert<String>(json['rid_str']);
  if (ridStr != null) {
    dongtaiResponseDataItemsBasic.ridStr = ridStr;
  }
  return dongtaiResponseDataItemsBasic;
}

Map<String, dynamic> $DongtaiResponseDataItemsBasicToJson(
    DongtaiResponseDataItemsBasic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['comment_id_str'] = entity.commentIdStr;
  data['comment_type'] = entity.commentType;
  data['jump_url'] = entity.jumpUrl;
  data['like_icon'] = entity.likeIcon?.toJson();
  data['rid_str'] = entity.ridStr;
  return data;
}

extension DongtaiResponseDataItemsBasicExtension on DongtaiResponseDataItemsBasic {
  DongtaiResponseDataItemsBasic copyWith({
    String? commentIdStr,
    int? commentType,
    String? jumpUrl,
    DongtaiResponseDataItemsBasicLikeIcon? likeIcon,
    String? ridStr,
  }) {
    return DongtaiResponseDataItemsBasic()
      ..commentIdStr = commentIdStr ?? this.commentIdStr
      ..commentType = commentType ?? this.commentType
      ..jumpUrl = jumpUrl ?? this.jumpUrl
      ..likeIcon = likeIcon ?? this.likeIcon
      ..ridStr = ridStr ?? this.ridStr;
  }
}

DongtaiResponseDataItemsBasicLikeIcon $DongtaiResponseDataItemsBasicLikeIconFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsBasicLikeIcon dongtaiResponseDataItemsBasicLikeIcon = DongtaiResponseDataItemsBasicLikeIcon();
  final String? actionUrl = jsonConvert.convert<String>(json['action_url']);
  if (actionUrl != null) {
    dongtaiResponseDataItemsBasicLikeIcon.actionUrl = actionUrl;
  }
  final String? endUrl = jsonConvert.convert<String>(json['end_url']);
  if (endUrl != null) {
    dongtaiResponseDataItemsBasicLikeIcon.endUrl = endUrl;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    dongtaiResponseDataItemsBasicLikeIcon.id = id;
  }
  final String? startUrl = jsonConvert.convert<String>(json['start_url']);
  if (startUrl != null) {
    dongtaiResponseDataItemsBasicLikeIcon.startUrl = startUrl;
  }
  return dongtaiResponseDataItemsBasicLikeIcon;
}

Map<String, dynamic> $DongtaiResponseDataItemsBasicLikeIconToJson(
    DongtaiResponseDataItemsBasicLikeIcon entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['action_url'] = entity.actionUrl;
  data['end_url'] = entity.endUrl;
  data['id'] = entity.id;
  data['start_url'] = entity.startUrl;
  return data;
}

extension DongtaiResponseDataItemsBasicLikeIconExtension on DongtaiResponseDataItemsBasicLikeIcon {
  DongtaiResponseDataItemsBasicLikeIcon copyWith({
    String? actionUrl,
    String? endUrl,
    int? id,
    String? startUrl,
  }) {
    return DongtaiResponseDataItemsBasicLikeIcon()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..endUrl = endUrl ?? this.endUrl
      ..id = id ?? this.id
      ..startUrl = startUrl ?? this.startUrl;
  }
}

DongtaiResponseDataItemsModules $DongtaiResponseDataItemsModulesFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModules dongtaiResponseDataItemsModules = DongtaiResponseDataItemsModules();
  final DongtaiResponseDataItemsModulesModuleAuthor? moduleAuthor = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthor>(
      json['module_author']);
  if (moduleAuthor != null) {
    dongtaiResponseDataItemsModules.moduleAuthor = moduleAuthor;
  }
  final DongtaiResponseDataItemsModulesModuleDynamic? moduleDynamic = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleDynamic>(
      json['module_dynamic']);
  if (moduleDynamic != null) {
    dongtaiResponseDataItemsModules.moduleDynamic = moduleDynamic;
  }
  final DongtaiResponseDataItemsModulesModuleInteraction? moduleInteraction = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleInteraction>(
      json['module_interaction']);
  if (moduleInteraction != null) {
    dongtaiResponseDataItemsModules.moduleInteraction = moduleInteraction;
  }
  final DongtaiResponseDataItemsModulesModuleMore? moduleMore = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleMore>(json['module_more']);
  if (moduleMore != null) {
    dongtaiResponseDataItemsModules.moduleMore = moduleMore;
  }
  final DongtaiResponseDataItemsModulesModuleStat? moduleStat = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleStat>(json['module_stat']);
  if (moduleStat != null) {
    dongtaiResponseDataItemsModules.moduleStat = moduleStat;
  }
  return dongtaiResponseDataItemsModules;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesToJson(
    DongtaiResponseDataItemsModules entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['module_author'] = entity.moduleAuthor?.toJson();
  data['module_dynamic'] = entity.moduleDynamic?.toJson();
  data['module_interaction'] = entity.moduleInteraction?.toJson();
  data['module_more'] = entity.moduleMore?.toJson();
  data['module_stat'] = entity.moduleStat?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesExtension on DongtaiResponseDataItemsModules {
  DongtaiResponseDataItemsModules copyWith({
    DongtaiResponseDataItemsModulesModuleAuthor? moduleAuthor,
    DongtaiResponseDataItemsModulesModuleDynamic? moduleDynamic,
    DongtaiResponseDataItemsModulesModuleInteraction? moduleInteraction,
    DongtaiResponseDataItemsModulesModuleMore? moduleMore,
    DongtaiResponseDataItemsModulesModuleStat? moduleStat,
  }) {
    return DongtaiResponseDataItemsModules()
      ..moduleAuthor = moduleAuthor ?? this.moduleAuthor
      ..moduleDynamic = moduleDynamic ?? this.moduleDynamic
      ..moduleInteraction = moduleInteraction ?? this.moduleInteraction
      ..moduleMore = moduleMore ?? this.moduleMore
      ..moduleStat = moduleStat ?? this.moduleStat;
  }
}

DongtaiResponseDataItemsModulesModuleAuthor $DongtaiResponseDataItemsModulesModuleAuthorFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthor dongtaiResponseDataItemsModulesModuleAuthor = DongtaiResponseDataItemsModulesModuleAuthor();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatar? avatar = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorAvatar>(
      json['avatar']);
  if (avatar != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.avatar = avatar;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorDecorate? decorate = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorDecorate>(
      json['decorate']);
  if (decorate != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.decorate = decorate;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.face = face;
  }
  final bool? faceNft = jsonConvert.convert<bool>(json['face_nft']);
  if (faceNft != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.faceNft = faceNft;
  }
  final dynamic following = json['following'];
  if (following != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.following = following;
  }
  final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
  if (jumpUrl != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.jumpUrl = jumpUrl;
  }
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.label = label;
  }
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.mid = mid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.name = name;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify? officialVerify = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify>(
      json['official_verify']);
  if (officialVerify != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.officialVerify = officialVerify;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorPendant? pendant = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorPendant>(
      json['pendant']);
  if (pendant != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.pendant = pendant;
  }
  final String? pubAction = jsonConvert.convert<String>(json['pub_action']);
  if (pubAction != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.pubAction = pubAction;
  }
  final String? pubLocationText = jsonConvert.convert<String>(
      json['pub_location_text']);
  if (pubLocationText != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.pubLocationText =
        pubLocationText;
  }
  final String? pubTime = jsonConvert.convert<String>(json['pub_time']);
  if (pubTime != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.pubTime = pubTime;
  }
  final int? pubTs = jsonConvert.convert<int>(json['pub_ts']);
  if (pubTs != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.pubTs = pubTs;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.type = type;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorVip? vip = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorVip>(json['vip']);
  if (vip != null) {
    dongtaiResponseDataItemsModulesModuleAuthor.vip = vip;
  }
  return dongtaiResponseDataItemsModulesModuleAuthor;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleAuthorToJson(
    DongtaiResponseDataItemsModulesModuleAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar?.toJson();
  data['decorate'] = entity.decorate?.toJson();
  data['face'] = entity.face;
  data['face_nft'] = entity.faceNft;
  data['following'] = entity.following;
  data['jump_url'] = entity.jumpUrl;
  data['label'] = entity.label;
  data['mid'] = entity.mid;
  data['name'] = entity.name;
  data['official_verify'] = entity.officialVerify?.toJson();
  data['pendant'] = entity.pendant?.toJson();
  data['pub_action'] = entity.pubAction;
  data['pub_location_text'] = entity.pubLocationText;
  data['pub_time'] = entity.pubTime;
  data['pub_ts'] = entity.pubTs;
  data['type'] = entity.type;
  data['vip'] = entity.vip?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorExtension on DongtaiResponseDataItemsModulesModuleAuthor {
  DongtaiResponseDataItemsModulesModuleAuthor copyWith({
    DongtaiResponseDataItemsModulesModuleAuthorAvatar? avatar,
    DongtaiResponseDataItemsModulesModuleAuthorDecorate? decorate,
    String? face,
    bool? faceNft,
    dynamic following,
    String? jumpUrl,
    String? label,
    int? mid,
    String? name,
    DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify? officialVerify,
    DongtaiResponseDataItemsModulesModuleAuthorPendant? pendant,
    String? pubAction,
    String? pubLocationText,
    String? pubTime,
    int? pubTs,
    String? type,
    DongtaiResponseDataItemsModulesModuleAuthorVip? vip,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthor()
      ..avatar = avatar ?? this.avatar
      ..decorate = decorate ?? this.decorate
      ..face = face ?? this.face
      ..faceNft = faceNft ?? this.faceNft
      ..following = following ?? this.following
      ..jumpUrl = jumpUrl ?? this.jumpUrl
      ..label = label ?? this.label
      ..mid = mid ?? this.mid
      ..name = name ?? this.name
      ..officialVerify = officialVerify ?? this.officialVerify
      ..pendant = pendant ?? this.pendant
      ..pubAction = pubAction ?? this.pubAction
      ..pubLocationText = pubLocationText ?? this.pubLocationText
      ..pubTime = pubTime ?? this.pubTime
      ..pubTs = pubTs ?? this.pubTs
      ..type = type ?? this.type
      ..vip = vip ?? this.vip;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatar $DongtaiResponseDataItemsModulesModuleAuthorAvatarFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatar dongtaiResponseDataItemsModulesModuleAuthorAvatar = DongtaiResponseDataItemsModulesModuleAuthorAvatar();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize? containerSize = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize>(
      json['container_size']);
  if (containerSize != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatar.containerSize =
        containerSize;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers? fallbackLayers = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers>(
      json['fallback_layers']);
  if (fallbackLayers != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatar.fallbackLayers =
        fallbackLayers;
  }
  final String? mid = jsonConvert.convert<String>(json['mid']);
  if (mid != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatar.mid = mid;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatar;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatar entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['container_size'] = entity.containerSize?.toJson();
  data['fallback_layers'] = entity.fallbackLayers?.toJson();
  data['mid'] = entity.mid;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatar {
  DongtaiResponseDataItemsModulesModuleAuthorAvatar copyWith({
    DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize? containerSize,
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers? fallbackLayers,
    String? mid,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatar()
      ..containerSize = containerSize ?? this.containerSize
      ..fallbackLayers = fallbackLayers ?? this.fallbackLayers
      ..mid = mid ?? this.mid;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize $DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSizeFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize dongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize = DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize();
  final double? height = jsonConvert.convert<double>(json['height']);
  if (height != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize.height =
        height;
  }
  final double? width = jsonConvert.convert<double>(json['width']);
  if (width != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize.width =
        width;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSizeToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['height'] = entity.height;
  data['width'] = entity.width;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSizeExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize copyWith({
    double? height,
    double? width,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize()
      ..height = height ?? this.height
      ..width = width ?? this.width;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers();
  final bool? isCriticalGroup = jsonConvert.convert<bool>(
      json['is_critical_group']);
  if (isCriticalGroup != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers
        .isCriticalGroup = isCriticalGroup;
  }
  final List<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers>? layers = (json['layers'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers>(
          e) as DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers)
      .toList();
  if (layers != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers.layers =
        layers;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['is_critical_group'] = entity.isCriticalGroup;
  data['layers'] = entity.layers?.map((v) => v.toJson()).toList();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers copyWith({
    bool? isCriticalGroup,
    List<
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers>? layers,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers()
      ..isCriticalGroup = isCriticalGroup ?? this.isCriticalGroup
      ..layers = layers ?? this.layers;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec? generalSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec>(
      json['general_spec']);
  if (generalSpec != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers
        .generalSpec = generalSpec;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig? layerConfig = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig>(
      json['layer_config']);
  if (layerConfig != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers
        .layerConfig = layerConfig;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource? resource = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource>(
      json['resource']);
  if (resource != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers
        .resource = resource;
  }
  final bool? visible = jsonConvert.convert<bool>(json['visible']);
  if (visible != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers
        .visible = visible;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['general_spec'] = entity.generalSpec?.toJson();
  data['layer_config'] = entity.layerConfig?.toJson();
  data['resource'] = entity.resource?.toJson();
  data['visible'] = entity.visible;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers copyWith(
      {
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec? generalSpec,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig? layerConfig,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource? resource,
        bool? visible,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers()
      ..generalSpec = generalSpec ?? this.generalSpec
      ..layerConfig = layerConfig ?? this.layerConfig
      ..resource = resource ?? this.resource
      ..visible = visible ?? this.visible;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec? posSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec>(
      json['pos_spec']);
  if (posSpec != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec
        .posSpec = posSpec;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec? renderSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec>(
      json['render_spec']);
  if (renderSpec != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec
        .renderSpec = renderSpec;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec? sizeSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec>(
      json['size_spec']);
  if (sizeSpec != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec
        .sizeSpec = sizeSpec;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pos_spec'] = entity.posSpec?.toJson();
  data['render_spec'] = entity.renderSpec?.toJson();
  data['size_spec'] = entity.sizeSpec?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec copyWith(
      {
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec? posSpec,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec? renderSpec,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec? sizeSpec,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec()
      ..posSpec = posSpec ?? this.posSpec
      ..renderSpec = renderSpec ?? this.renderSpec
      ..sizeSpec = sizeSpec ?? this.sizeSpec;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec();
  final double? axisX = jsonConvert.convert<double>(json['axis_x']);
  if (axisX != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec
        .axisX = axisX;
  }
  final double? axisY = jsonConvert.convert<double>(json['axis_y']);
  if (axisY != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec
        .axisY = axisY;
  }
  final int? coordinatePos = jsonConvert.convert<int>(json['coordinate_pos']);
  if (coordinatePos != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec
        .coordinatePos = coordinatePos;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['axis_x'] = entity.axisX;
  data['axis_y'] = entity.axisY;
  data['coordinate_pos'] = entity.coordinatePos;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec copyWith(
      {
        double? axisX,
        double? axisY,
        int? coordinatePos,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec()
      ..axisX = axisX ?? this.axisX
      ..axisY = axisY ?? this.axisY
      ..coordinatePos = coordinatePos ?? this.coordinatePos;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec();
  final int? opacity = jsonConvert.convert<int>(json['opacity']);
  if (opacity != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec
        .opacity = opacity;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['opacity'] = entity.opacity;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec copyWith(
      {
        int? opacity,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec()
      ..opacity = opacity ?? this.opacity;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec();
  final double? height = jsonConvert.convert<double>(json['height']);
  if (height != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec
        .height = height;
  }
  final double? width = jsonConvert.convert<double>(json['width']);
  if (width != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec
        .width = width;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['height'] = entity.height;
  data['width'] = entity.width;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec copyWith(
      {
        double? height,
        double? width,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec()
      ..height = height ?? this.height
      ..width = width ?? this.width;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig();
  final bool? isCritical = jsonConvert.convert<bool>(json['is_critical']);
  if (isCritical != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig
        .isCritical = isCritical;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags? tags = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags>(
      json['tags']);
  if (tags != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig
        .tags = tags;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['is_critical'] = entity.isCritical;
  data['tags'] = entity.tags?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig copyWith(
      {
        bool? isCritical,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags? tags,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig()
      ..isCritical = isCritical ?? this.isCritical
      ..tags = tags ?? this.tags;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer? avatarLayer = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer>(
      json['AVATAR_LAYER']);
  if (avatarLayer != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags
        .avatarLayer = avatarLayer;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg? generalCfg = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg>(
      json['GENERAL_CFG']);
  if (generalCfg != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags
        .generalCfg = generalCfg;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['AVATAR_LAYER'] = entity.avatarLayer?.toJson();
  data['GENERAL_CFG'] = entity.generalCfg?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags copyWith(
      {
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer? avatarLayer,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg? generalCfg,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags()
      ..avatarLayer = avatarLayer ?? this.avatarLayer
      ..generalCfg = generalCfg ?? this.generalCfg;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer();
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer {
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg();
  final int? configType = jsonConvert.convert<int>(json['config_type']);
  if (configType != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg
        .configType = configType;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig? generalConfig = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig>(
      json['general_config']);
  if (generalConfig != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg
        .generalConfig = generalConfig;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['config_type'] = entity.configType;
  data['general_config'] = entity.generalConfig?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg copyWith(
      {
        int? configType,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig? generalConfig,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg()
      ..configType = configType ?? this.configType
      ..generalConfig = generalConfig ?? this.generalConfig;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle? webCssStyle = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle>(
      json['web_css_style']);
  if (webCssStyle != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig
        .webCssStyle = webCssStyle;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['web_css_style'] = entity.webCssStyle?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig copyWith(
      {
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle? webCssStyle,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig()
      ..webCssStyle = webCssStyle ?? this.webCssStyle;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle();
  final String? borderRadius = jsonConvert.convert<String>(
      json['borderRadius']);
  if (borderRadius != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle
        .borderRadius = borderRadius;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['borderRadius'] = entity.borderRadius;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle copyWith(
      {
        String? borderRadius,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle()
      ..borderRadius = borderRadius ?? this.borderRadius;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage? resImage = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage>(
      json['res_image']);
  if (resImage != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource
        .resImage = resImage;
  }
  final int? resType = jsonConvert.convert<int>(json['res_type']);
  if (resType != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource
        .resType = resType;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['res_image'] = entity.resImage?.toJson();
  data['res_type'] = entity.resType;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource copyWith(
      {
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage? resImage,
        int? resType,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource()
      ..resImage = resImage ?? this.resImage
      ..resType = resType ?? this.resType;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage();
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc? imageSrc = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc>(
      json['image_src']);
  if (imageSrc != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage
        .imageSrc = imageSrc;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image_src'] = entity.imageSrc?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage copyWith(
      {
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc? imageSrc,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage()
      ..imageSrc = imageSrc ?? this.imageSrc;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc();
  final int? placeholder = jsonConvert.convert<int>(json['placeholder']);
  if (placeholder != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc
        .placeholder = placeholder;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote? remote = jsonConvert
      .convert<
      DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote>(
      json['remote']);
  if (remote != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc
        .remote = remote;
  }
  final int? srcType = jsonConvert.convert<int>(json['src_type']);
  if (srcType != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc
        .srcType = srcType;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['placeholder'] = entity.placeholder;
  data['remote'] = entity.remote?.toJson();
  data['src_type'] = entity.srcType;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc copyWith(
      {
        int? placeholder,
        DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote? remote,
        int? srcType,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc()
      ..placeholder = placeholder ?? this.placeholder
      ..remote = remote ?? this.remote
      ..srcType = srcType ?? this.srcType;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote = DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote();
  final String? bfsStyle = jsonConvert.convert<String>(json['bfs_style']);
  if (bfsStyle != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote
        .bfsStyle = bfsStyle;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote
        .url = url;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteToJson(
    DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bfs_style'] = entity.bfsStyle;
  data['url'] = entity.url;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteExtension on DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote {
  DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote copyWith(
      {
        String? bfsStyle,
        String? url,
      }) {
    return DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote()
      ..bfsStyle = bfsStyle ?? this.bfsStyle
      ..url = url ?? this.url;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorDecorate $DongtaiResponseDataItemsModulesModuleAuthorDecorateFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorDecorate dongtaiResponseDataItemsModulesModuleAuthorDecorate = DongtaiResponseDataItemsModulesModuleAuthorDecorate();
  final String? cardUrl = jsonConvert.convert<String>(json['card_url']);
  if (cardUrl != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorate.cardUrl = cardUrl;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorDecorateFan? fan = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorDecorateFan>(
      json['fan']);
  if (fan != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorate.fan = fan;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorate.id = id;
  }
  final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
  if (jumpUrl != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorate.jumpUrl = jumpUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorate.name = name;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorate.type = type;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorDecorate;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleAuthorDecorateToJson(
    DongtaiResponseDataItemsModulesModuleAuthorDecorate entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['card_url'] = entity.cardUrl;
  data['fan'] = entity.fan?.toJson();
  data['id'] = entity.id;
  data['jump_url'] = entity.jumpUrl;
  data['name'] = entity.name;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorDecorateExtension on DongtaiResponseDataItemsModulesModuleAuthorDecorate {
  DongtaiResponseDataItemsModulesModuleAuthorDecorate copyWith({
    String? cardUrl,
    DongtaiResponseDataItemsModulesModuleAuthorDecorateFan? fan,
    int? id,
    String? jumpUrl,
    String? name,
    int? type,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorDecorate()
      ..cardUrl = cardUrl ?? this.cardUrl
      ..fan = fan ?? this.fan
      ..id = id ?? this.id
      ..jumpUrl = jumpUrl ?? this.jumpUrl
      ..name = name ?? this.name
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorDecorateFan $DongtaiResponseDataItemsModulesModuleAuthorDecorateFanFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorDecorateFan dongtaiResponseDataItemsModulesModuleAuthorDecorateFan = DongtaiResponseDataItemsModulesModuleAuthorDecorateFan();
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorateFan.color = color;
  }
  final bool? isFan = jsonConvert.convert<bool>(json['is_fan']);
  if (isFan != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorateFan.isFan = isFan;
  }
  final String? numStr = jsonConvert.convert<String>(json['num_str']);
  if (numStr != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorateFan.numStr = numStr;
  }
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    dongtaiResponseDataItemsModulesModuleAuthorDecorateFan.number = number;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorDecorateFan;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorDecorateFanToJson(
    DongtaiResponseDataItemsModulesModuleAuthorDecorateFan entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['color'] = entity.color;
  data['is_fan'] = entity.isFan;
  data['num_str'] = entity.numStr;
  data['number'] = entity.number;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorDecorateFanExtension on DongtaiResponseDataItemsModulesModuleAuthorDecorateFan {
  DongtaiResponseDataItemsModulesModuleAuthorDecorateFan copyWith({
    String? color,
    bool? isFan,
    String? numStr,
    int? number,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorDecorateFan()
      ..color = color ?? this.color
      ..isFan = isFan ?? this.isFan
      ..numStr = numStr ?? this.numStr
      ..number = number ?? this.number;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify $DongtaiResponseDataItemsModulesModuleAuthorOfficialVerifyFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify dongtaiResponseDataItemsModulesModuleAuthorOfficialVerify = DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    dongtaiResponseDataItemsModulesModuleAuthorOfficialVerify.desc = desc;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleAuthorOfficialVerify.type = type;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorOfficialVerify;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleAuthorOfficialVerifyToJson(
    DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorOfficialVerifyExtension on DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify {
  DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify copyWith({
    String? desc,
    int? type,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify()
      ..desc = desc ?? this.desc
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorPendant $DongtaiResponseDataItemsModulesModuleAuthorPendantFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorPendant dongtaiResponseDataItemsModulesModuleAuthorPendant = DongtaiResponseDataItemsModulesModuleAuthorPendant();
  final int? expire = jsonConvert.convert<int>(json['expire']);
  if (expire != null) {
    dongtaiResponseDataItemsModulesModuleAuthorPendant.expire = expire;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    dongtaiResponseDataItemsModulesModuleAuthorPendant.image = image;
  }
  final String? imageEnhance = jsonConvert.convert<String>(
      json['image_enhance']);
  if (imageEnhance != null) {
    dongtaiResponseDataItemsModulesModuleAuthorPendant.imageEnhance =
        imageEnhance;
  }
  final String? imageEnhanceFrame = jsonConvert.convert<String>(
      json['image_enhance_frame']);
  if (imageEnhanceFrame != null) {
    dongtaiResponseDataItemsModulesModuleAuthorPendant.imageEnhanceFrame =
        imageEnhanceFrame;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    dongtaiResponseDataItemsModulesModuleAuthorPendant.name = name;
  }
  final int? pid = jsonConvert.convert<int>(json['pid']);
  if (pid != null) {
    dongtaiResponseDataItemsModulesModuleAuthorPendant.pid = pid;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorPendant;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleAuthorPendantToJson(
    DongtaiResponseDataItemsModulesModuleAuthorPendant entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['expire'] = entity.expire;
  data['image'] = entity.image;
  data['image_enhance'] = entity.imageEnhance;
  data['image_enhance_frame'] = entity.imageEnhanceFrame;
  data['name'] = entity.name;
  data['pid'] = entity.pid;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorPendantExtension on DongtaiResponseDataItemsModulesModuleAuthorPendant {
  DongtaiResponseDataItemsModulesModuleAuthorPendant copyWith({
    int? expire,
    String? image,
    String? imageEnhance,
    String? imageEnhanceFrame,
    String? name,
    int? pid,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorPendant()
      ..expire = expire ?? this.expire
      ..image = image ?? this.image
      ..imageEnhance = imageEnhance ?? this.imageEnhance
      ..imageEnhanceFrame = imageEnhanceFrame ?? this.imageEnhanceFrame
      ..name = name ?? this.name
      ..pid = pid ?? this.pid;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorVip $DongtaiResponseDataItemsModulesModuleAuthorVipFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorVip dongtaiResponseDataItemsModulesModuleAuthorVip = DongtaiResponseDataItemsModulesModuleAuthorVip();
  final int? avatarSubscript = jsonConvert.convert<int>(
      json['avatar_subscript']);
  if (avatarSubscript != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.avatarSubscript =
        avatarSubscript;
  }
  final String? avatarSubscriptUrl = jsonConvert.convert<String>(
      json['avatar_subscript_url']);
  if (avatarSubscriptUrl != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.avatarSubscriptUrl =
        avatarSubscriptUrl;
  }
  final int? dueDate = jsonConvert.convert<int>(json['due_date']);
  if (dueDate != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.dueDate = dueDate;
  }
  final DongtaiResponseDataItemsModulesModuleAuthorVipLabel? label = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleAuthorVipLabel>(
      json['label']);
  if (label != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.label = label;
  }
  final String? nicknameColor = jsonConvert.convert<String>(
      json['nickname_color']);
  if (nicknameColor != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.nicknameColor =
        nicknameColor;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.status = status;
  }
  final int? themeType = jsonConvert.convert<int>(json['theme_type']);
  if (themeType != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.themeType = themeType;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVip.type = type;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorVip;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleAuthorVipToJson(
    DongtaiResponseDataItemsModulesModuleAuthorVip entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar_subscript'] = entity.avatarSubscript;
  data['avatar_subscript_url'] = entity.avatarSubscriptUrl;
  data['due_date'] = entity.dueDate;
  data['label'] = entity.label?.toJson();
  data['nickname_color'] = entity.nicknameColor;
  data['status'] = entity.status;
  data['theme_type'] = entity.themeType;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorVipExtension on DongtaiResponseDataItemsModulesModuleAuthorVip {
  DongtaiResponseDataItemsModulesModuleAuthorVip copyWith({
    int? avatarSubscript,
    String? avatarSubscriptUrl,
    int? dueDate,
    DongtaiResponseDataItemsModulesModuleAuthorVipLabel? label,
    String? nicknameColor,
    int? status,
    int? themeType,
    int? type,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorVip()
      ..avatarSubscript = avatarSubscript ?? this.avatarSubscript
      ..avatarSubscriptUrl = avatarSubscriptUrl ?? this.avatarSubscriptUrl
      ..dueDate = dueDate ?? this.dueDate
      ..label = label ?? this.label
      ..nicknameColor = nicknameColor ?? this.nicknameColor
      ..status = status ?? this.status
      ..themeType = themeType ?? this.themeType
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleAuthorVipLabel $DongtaiResponseDataItemsModulesModuleAuthorVipLabelFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleAuthorVipLabel dongtaiResponseDataItemsModulesModuleAuthorVipLabel = DongtaiResponseDataItemsModulesModuleAuthorVipLabel();
  final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
  if (bgColor != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.bgColor = bgColor;
  }
  final int? bgStyle = jsonConvert.convert<int>(json['bg_style']);
  if (bgStyle != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.bgStyle = bgStyle;
  }
  final String? borderColor = jsonConvert.convert<String>(json['border_color']);
  if (borderColor != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.borderColor =
        borderColor;
  }
  final String? imgLabelUriHans = jsonConvert.convert<String>(
      json['img_label_uri_hans']);
  if (imgLabelUriHans != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.imgLabelUriHans =
        imgLabelUriHans;
  }
  final String? imgLabelUriHansStatic = jsonConvert.convert<String>(
      json['img_label_uri_hans_static']);
  if (imgLabelUriHansStatic != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.imgLabelUriHansStatic =
        imgLabelUriHansStatic;
  }
  final String? imgLabelUriHant = jsonConvert.convert<String>(
      json['img_label_uri_hant']);
  if (imgLabelUriHant != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.imgLabelUriHant =
        imgLabelUriHant;
  }
  final String? imgLabelUriHantStatic = jsonConvert.convert<String>(
      json['img_label_uri_hant_static']);
  if (imgLabelUriHantStatic != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.imgLabelUriHantStatic =
        imgLabelUriHantStatic;
  }
  final String? labelTheme = jsonConvert.convert<String>(json['label_theme']);
  if (labelTheme != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.labelTheme = labelTheme;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.path = path;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.text = text;
  }
  final String? textColor = jsonConvert.convert<String>(json['text_color']);
  if (textColor != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.textColor = textColor;
  }
  final bool? useImgLabel = jsonConvert.convert<bool>(json['use_img_label']);
  if (useImgLabel != null) {
    dongtaiResponseDataItemsModulesModuleAuthorVipLabel.useImgLabel =
        useImgLabel;
  }
  return dongtaiResponseDataItemsModulesModuleAuthorVipLabel;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleAuthorVipLabelToJson(
    DongtaiResponseDataItemsModulesModuleAuthorVipLabel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bg_color'] = entity.bgColor;
  data['bg_style'] = entity.bgStyle;
  data['border_color'] = entity.borderColor;
  data['img_label_uri_hans'] = entity.imgLabelUriHans;
  data['img_label_uri_hans_static'] = entity.imgLabelUriHansStatic;
  data['img_label_uri_hant'] = entity.imgLabelUriHant;
  data['img_label_uri_hant_static'] = entity.imgLabelUriHantStatic;
  data['label_theme'] = entity.labelTheme;
  data['path'] = entity.path;
  data['text'] = entity.text;
  data['text_color'] = entity.textColor;
  data['use_img_label'] = entity.useImgLabel;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleAuthorVipLabelExtension on DongtaiResponseDataItemsModulesModuleAuthorVipLabel {
  DongtaiResponseDataItemsModulesModuleAuthorVipLabel copyWith({
    String? bgColor,
    int? bgStyle,
    String? borderColor,
    String? imgLabelUriHans,
    String? imgLabelUriHansStatic,
    String? imgLabelUriHant,
    String? imgLabelUriHantStatic,
    String? labelTheme,
    String? path,
    String? text,
    String? textColor,
    bool? useImgLabel,
  }) {
    return DongtaiResponseDataItemsModulesModuleAuthorVipLabel()
      ..bgColor = bgColor ?? this.bgColor
      ..bgStyle = bgStyle ?? this.bgStyle
      ..borderColor = borderColor ?? this.borderColor
      ..imgLabelUriHans = imgLabelUriHans ?? this.imgLabelUriHans
      ..imgLabelUriHansStatic = imgLabelUriHansStatic ??
          this.imgLabelUriHansStatic
      ..imgLabelUriHant = imgLabelUriHant ?? this.imgLabelUriHant
      ..imgLabelUriHantStatic = imgLabelUriHantStatic ??
          this.imgLabelUriHantStatic
      ..labelTheme = labelTheme ?? this.labelTheme
      ..path = path ?? this.path
      ..text = text ?? this.text
      ..textColor = textColor ?? this.textColor
      ..useImgLabel = useImgLabel ?? this.useImgLabel;
  }
}

DongtaiResponseDataItemsModulesModuleDynamic $DongtaiResponseDataItemsModulesModuleDynamicFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleDynamic dongtaiResponseDataItemsModulesModuleDynamic = DongtaiResponseDataItemsModulesModuleDynamic();
  final dynamic additional = json['additional'];
  if (additional != null) {
    dongtaiResponseDataItemsModulesModuleDynamic.additional = additional;
  }
  final dynamic desc = json['desc'];
  if (desc != null) {
    dongtaiResponseDataItemsModulesModuleDynamic.desc = desc;
  }
  final DongtaiResponseDataItemsModulesModuleDynamicMajor? major = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleDynamicMajor>(
      json['major']);
  if (major != null) {
    dongtaiResponseDataItemsModulesModuleDynamic.major = major;
  }
  final dynamic topic = json['topic'];
  if (topic != null) {
    dongtaiResponseDataItemsModulesModuleDynamic.topic = topic;
  }
  return dongtaiResponseDataItemsModulesModuleDynamic;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleDynamicToJson(
    DongtaiResponseDataItemsModulesModuleDynamic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['additional'] = entity.additional;
  data['desc'] = entity.desc;
  data['major'] = entity.major?.toJson();
  data['topic'] = entity.topic;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleDynamicExtension on DongtaiResponseDataItemsModulesModuleDynamic {
  DongtaiResponseDataItemsModulesModuleDynamic copyWith({
    dynamic additional,
    dynamic desc,
    DongtaiResponseDataItemsModulesModuleDynamicMajor? major,
    dynamic topic,
  }) {
    return DongtaiResponseDataItemsModulesModuleDynamic()
      ..additional = additional ?? this.additional
      ..desc = desc ?? this.desc
      ..major = major ?? this.major
      ..topic = topic ?? this.topic;
  }
}

DongtaiResponseDataItemsModulesModuleDynamicMajor $DongtaiResponseDataItemsModulesModuleDynamicMajorFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleDynamicMajor dongtaiResponseDataItemsModulesModuleDynamicMajor = DongtaiResponseDataItemsModulesModuleDynamicMajor();
  final DongtaiResponseDataItemsModulesModuleDynamicMajorOpus? opus = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleDynamicMajorOpus>(
      json['opus']);
  if (opus != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajor.opus = opus;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajor.type = type;
  }
  return dongtaiResponseDataItemsModulesModuleDynamicMajor;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleDynamicMajorToJson(
    DongtaiResponseDataItemsModulesModuleDynamicMajor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['opus'] = entity.opus?.toJson();
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleDynamicMajorExtension on DongtaiResponseDataItemsModulesModuleDynamicMajor {
  DongtaiResponseDataItemsModulesModuleDynamicMajor copyWith({
    DongtaiResponseDataItemsModulesModuleDynamicMajorOpus? opus,
    String? type,
  }) {
    return DongtaiResponseDataItemsModulesModuleDynamicMajor()
      ..opus = opus ?? this.opus
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleDynamicMajorOpus $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleDynamicMajorOpus dongtaiResponseDataItemsModulesModuleDynamicMajorOpus = DongtaiResponseDataItemsModulesModuleDynamicMajorOpus();
  final List<String>? foldAction = (json['fold_action'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (foldAction != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpus.foldAction =
        foldAction;
  }
  final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
  if (jumpUrl != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpus.jumpUrl = jumpUrl;
  }
  final List<
      DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics>? pics = (json['pics'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics>(
          e) as DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics)
      .toList();
  if (pics != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpus.pics = pics;
  }
  final DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary? summary = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary>(
      json['summary']);
  if (summary != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpus.summary = summary;
  }
  final dynamic title = json['title'];
  if (title != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpus.title = title;
  }
  return dongtaiResponseDataItemsModulesModuleDynamicMajorOpus;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusToJson(
    DongtaiResponseDataItemsModulesModuleDynamicMajorOpus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fold_action'] = entity.foldAction;
  data['jump_url'] = entity.jumpUrl;
  data['pics'] = entity.pics?.map((v) => v.toJson()).toList();
  data['summary'] = entity.summary?.toJson();
  data['title'] = entity.title;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleDynamicMajorOpusExtension on DongtaiResponseDataItemsModulesModuleDynamicMajorOpus {
  DongtaiResponseDataItemsModulesModuleDynamicMajorOpus copyWith({
    List<String>? foldAction,
    String? jumpUrl,
    List<DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics>? pics,
    DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary? summary,
    dynamic title,
  }) {
    return DongtaiResponseDataItemsModulesModuleDynamicMajorOpus()
      ..foldAction = foldAction ?? this.foldAction
      ..jumpUrl = jumpUrl ?? this.jumpUrl
      ..pics = pics ?? this.pics
      ..summary = summary ?? this.summary
      ..title = title ?? this.title;
  }
}

DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPicsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics dongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics = DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics();
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics.height = height;
  }
  final double? size = jsonConvert.convert<double>(json['size']);
  if (size != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics.size = size;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics.width = width;
  }
  return dongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPicsToJson(
    DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['height'] = entity.height;
  data['size'] = entity.size;
  data['url'] = entity.url;
  data['width'] = entity.width;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPicsExtension on DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics {
  DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics copyWith({
    int? height,
    double? size,
    String? url,
    int? width,
  }) {
    return DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics()
      ..height = height ?? this.height
      ..size = size ?? this.size
      ..url = url ?? this.url
      ..width = width ?? this.width;
  }
}

DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary = DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary();
  final List<
      DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes>? richTextNodes = (json['rich_text_nodes'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes>(
          e) as DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes)
      .toList();
  if (richTextNodes != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary.richTextNodes =
        richTextNodes;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary.text = text;
  }
  return dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryToJson(
    DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rich_text_nodes'] =
      entity.richTextNodes?.map((v) => v.toJson()).toList();
  data['text'] = entity.text;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryExtension on DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary {
  DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary copyWith({
    List<
        DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes>? richTextNodes,
    String? text,
  }) {
    return DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary()
      ..richTextNodes = richTextNodes ?? this.richTextNodes
      ..text = text ?? this.text;
  }
}

DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodesFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes = DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes();
  final String? origText = jsonConvert.convert<String>(json['orig_text']);
  if (origText != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes
        .origText = origText;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes
        .text = text;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes
        .type = type;
  }
  return dongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodesToJson(
    DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['orig_text'] = entity.origText;
  data['text'] = entity.text;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodesExtension on DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes {
  DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes copyWith(
      {
        String? origText,
        String? text,
        String? type,
      }) {
    return DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes()
      ..origText = origText ?? this.origText
      ..text = text ?? this.text
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleInteraction $DongtaiResponseDataItemsModulesModuleInteractionFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleInteraction dongtaiResponseDataItemsModulesModuleInteraction = DongtaiResponseDataItemsModulesModuleInteraction();
  final List<
      DongtaiResponseDataItemsModulesModuleInteractionItems>? items = (json['items'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsModulesModuleInteractionItems>(
          e) as DongtaiResponseDataItemsModulesModuleInteractionItems).toList();
  if (items != null) {
    dongtaiResponseDataItemsModulesModuleInteraction.items = items;
  }
  return dongtaiResponseDataItemsModulesModuleInteraction;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleInteractionToJson(
    DongtaiResponseDataItemsModulesModuleInteraction entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['items'] = entity.items?.map((v) => v.toJson()).toList();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleInteractionExtension on DongtaiResponseDataItemsModulesModuleInteraction {
  DongtaiResponseDataItemsModulesModuleInteraction copyWith({
    List<DongtaiResponseDataItemsModulesModuleInteractionItems>? items,
  }) {
    return DongtaiResponseDataItemsModulesModuleInteraction()
      ..items = items ?? this.items;
  }
}

DongtaiResponseDataItemsModulesModuleInteractionItems $DongtaiResponseDataItemsModulesModuleInteractionItemsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleInteractionItems dongtaiResponseDataItemsModulesModuleInteractionItems = DongtaiResponseDataItemsModulesModuleInteractionItems();
  final DongtaiResponseDataItemsModulesModuleInteractionItemsDesc? desc = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleInteractionItemsDesc>(
      json['desc']);
  if (desc != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItems.desc = desc;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItems.type = type;
  }
  return dongtaiResponseDataItemsModulesModuleInteractionItems;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleInteractionItemsToJson(
    DongtaiResponseDataItemsModulesModuleInteractionItems entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc?.toJson();
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleInteractionItemsExtension on DongtaiResponseDataItemsModulesModuleInteractionItems {
  DongtaiResponseDataItemsModulesModuleInteractionItems copyWith({
    DongtaiResponseDataItemsModulesModuleInteractionItemsDesc? desc,
    int? type,
  }) {
    return DongtaiResponseDataItemsModulesModuleInteractionItems()
      ..desc = desc ?? this.desc
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleInteractionItemsDesc $DongtaiResponseDataItemsModulesModuleInteractionItemsDescFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleInteractionItemsDesc dongtaiResponseDataItemsModulesModuleInteractionItemsDesc = DongtaiResponseDataItemsModulesModuleInteractionItemsDesc();
  final List<
      DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes>? richTextNodes = (json['rich_text_nodes'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes>(
          e) as DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes)
      .toList();
  if (richTextNodes != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItemsDesc.richTextNodes =
        richTextNodes;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItemsDesc.text = text;
  }
  return dongtaiResponseDataItemsModulesModuleInteractionItemsDesc;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleInteractionItemsDescToJson(
    DongtaiResponseDataItemsModulesModuleInteractionItemsDesc entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rich_text_nodes'] =
      entity.richTextNodes?.map((v) => v.toJson()).toList();
  data['text'] = entity.text;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleInteractionItemsDescExtension on DongtaiResponseDataItemsModulesModuleInteractionItemsDesc {
  DongtaiResponseDataItemsModulesModuleInteractionItemsDesc copyWith({
    List<
        DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes>? richTextNodes,
    String? text,
  }) {
    return DongtaiResponseDataItemsModulesModuleInteractionItemsDesc()
      ..richTextNodes = richTextNodes ?? this.richTextNodes
      ..text = text ?? this.text;
  }
}

DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes $DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodesFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes dongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes = DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes();
  final String? origText = jsonConvert.convert<String>(json['orig_text']);
  if (origText != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes
        .origText = origText;
  }
  final String? rid = jsonConvert.convert<String>(json['rid']);
  if (rid != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes.rid =
        rid;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes
        .text = text;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes
        .type = type;
  }
  return dongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodesToJson(
    DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['orig_text'] = entity.origText;
  data['rid'] = entity.rid;
  data['text'] = entity.text;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodesExtension on DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes {
  DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes copyWith(
      {
        String? origText,
        String? rid,
        String? text,
        String? type,
      }) {
    return DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes()
      ..origText = origText ?? this.origText
      ..rid = rid ?? this.rid
      ..text = text ?? this.text
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsModulesModuleMore $DongtaiResponseDataItemsModulesModuleMoreFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleMore dongtaiResponseDataItemsModulesModuleMore = DongtaiResponseDataItemsModulesModuleMore();
  final List<
      DongtaiResponseDataItemsModulesModuleMoreThreePointItems>? threePointItems = (json['three_point_items'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsModulesModuleMoreThreePointItems>(
          e) as DongtaiResponseDataItemsModulesModuleMoreThreePointItems)
      .toList();
  if (threePointItems != null) {
    dongtaiResponseDataItemsModulesModuleMore.threePointItems = threePointItems;
  }
  return dongtaiResponseDataItemsModulesModuleMore;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleMoreToJson(
    DongtaiResponseDataItemsModulesModuleMore entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['three_point_items'] =
      entity.threePointItems?.map((v) => v.toJson()).toList();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleMoreExtension on DongtaiResponseDataItemsModulesModuleMore {
  DongtaiResponseDataItemsModulesModuleMore copyWith({
    List<
        DongtaiResponseDataItemsModulesModuleMoreThreePointItems>? threePointItems,
  }) {
    return DongtaiResponseDataItemsModulesModuleMore()
      ..threePointItems = threePointItems ?? this.threePointItems;
  }
}

DongtaiResponseDataItemsModulesModuleMoreThreePointItems $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleMoreThreePointItems dongtaiResponseDataItemsModulesModuleMoreThreePointItems = DongtaiResponseDataItemsModulesModuleMoreThreePointItems();
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItems.label = label;
  }
  final DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams? params = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams>(
      json['params']);
  if (params != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItems.params = params;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItems.type = type;
  }
  final DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal? modal = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal>(
      json['modal']);
  if (modal != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItems.modal = modal;
  }
  return dongtaiResponseDataItemsModulesModuleMoreThreePointItems;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsToJson(
    DongtaiResponseDataItemsModulesModuleMoreThreePointItems entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['label'] = entity.label;
  data['params'] = entity.params?.toJson();
  data['type'] = entity.type;
  data['modal'] = entity.modal?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleMoreThreePointItemsExtension on DongtaiResponseDataItemsModulesModuleMoreThreePointItems {
  DongtaiResponseDataItemsModulesModuleMoreThreePointItems copyWith({
    String? label,
    DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams? params,
    String? type,
    DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal? modal,
  }) {
    return DongtaiResponseDataItemsModulesModuleMoreThreePointItems()
      ..label = label ?? this.label
      ..params = params ?? this.params
      ..type = type ?? this.type
      ..modal = modal ?? this.modal;
  }
}

DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParamsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams dongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams = DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams();
  final String? dynamicId = jsonConvert.convert<String>(json['dynamic_id']);
  if (dynamicId != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams.dynamicId =
        dynamicId;
  }
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams.status =
        status;
  }
  return dongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParamsToJson(
    DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['dynamic_id'] = entity.dynamicId;
  data['status'] = entity.status;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParamsExtension on DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams {
  DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams copyWith({
    String? dynamicId,
    bool? status,
  }) {
    return DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams()
      ..dynamicId = dynamicId ?? this.dynamicId
      ..status = status ?? this.status;
  }
}

DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModalFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal dongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal = DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal();
  final String? cancel = jsonConvert.convert<String>(json['cancel']);
  if (cancel != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal.cancel =
        cancel;
  }
  final String? confirm = jsonConvert.convert<String>(json['confirm']);
  if (confirm != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal.confirm =
        confirm;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal.content =
        content;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    dongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal.title = title;
  }
  return dongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModalToJson(
    DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cancel'] = entity.cancel;
  data['confirm'] = entity.confirm;
  data['content'] = entity.content;
  data['title'] = entity.title;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModalExtension on DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal {
  DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal copyWith({
    String? cancel,
    String? confirm,
    String? content,
    String? title,
  }) {
    return DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal()
      ..cancel = cancel ?? this.cancel
      ..confirm = confirm ?? this.confirm
      ..content = content ?? this.content
      ..title = title ?? this.title;
  }
}

DongtaiResponseDataItemsModulesModuleStat $DongtaiResponseDataItemsModulesModuleStatFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleStat dongtaiResponseDataItemsModulesModuleStat = DongtaiResponseDataItemsModulesModuleStat();
  final DongtaiResponseDataItemsModulesModuleStatComment? comment = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleStatComment>(
      json['comment']);
  if (comment != null) {
    dongtaiResponseDataItemsModulesModuleStat.comment = comment;
  }
  final DongtaiResponseDataItemsModulesModuleStatForward? forward = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleStatForward>(
      json['forward']);
  if (forward != null) {
    dongtaiResponseDataItemsModulesModuleStat.forward = forward;
  }
  final DongtaiResponseDataItemsModulesModuleStatLike? like = jsonConvert
      .convert<DongtaiResponseDataItemsModulesModuleStatLike>(json['like']);
  if (like != null) {
    dongtaiResponseDataItemsModulesModuleStat.like = like;
  }
  return dongtaiResponseDataItemsModulesModuleStat;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleStatToJson(
    DongtaiResponseDataItemsModulesModuleStat entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['comment'] = entity.comment?.toJson();
  data['forward'] = entity.forward?.toJson();
  data['like'] = entity.like?.toJson();
  return data;
}

extension DongtaiResponseDataItemsModulesModuleStatExtension on DongtaiResponseDataItemsModulesModuleStat {
  DongtaiResponseDataItemsModulesModuleStat copyWith({
    DongtaiResponseDataItemsModulesModuleStatComment? comment,
    DongtaiResponseDataItemsModulesModuleStatForward? forward,
    DongtaiResponseDataItemsModulesModuleStatLike? like,
  }) {
    return DongtaiResponseDataItemsModulesModuleStat()
      ..comment = comment ?? this.comment
      ..forward = forward ?? this.forward
      ..like = like ?? this.like;
  }
}

DongtaiResponseDataItemsModulesModuleStatComment $DongtaiResponseDataItemsModulesModuleStatCommentFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleStatComment dongtaiResponseDataItemsModulesModuleStatComment = DongtaiResponseDataItemsModulesModuleStatComment();
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    dongtaiResponseDataItemsModulesModuleStatComment.count = count;
  }
  final bool? forbidden = jsonConvert.convert<bool>(json['forbidden']);
  if (forbidden != null) {
    dongtaiResponseDataItemsModulesModuleStatComment.forbidden = forbidden;
  }
  return dongtaiResponseDataItemsModulesModuleStatComment;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleStatCommentToJson(
    DongtaiResponseDataItemsModulesModuleStatComment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['count'] = entity.count;
  data['forbidden'] = entity.forbidden;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleStatCommentExtension on DongtaiResponseDataItemsModulesModuleStatComment {
  DongtaiResponseDataItemsModulesModuleStatComment copyWith({
    int? count,
    bool? forbidden,
  }) {
    return DongtaiResponseDataItemsModulesModuleStatComment()
      ..count = count ?? this.count
      ..forbidden = forbidden ?? this.forbidden;
  }
}

DongtaiResponseDataItemsModulesModuleStatForward $DongtaiResponseDataItemsModulesModuleStatForwardFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleStatForward dongtaiResponseDataItemsModulesModuleStatForward = DongtaiResponseDataItemsModulesModuleStatForward();
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    dongtaiResponseDataItemsModulesModuleStatForward.count = count;
  }
  final bool? forbidden = jsonConvert.convert<bool>(json['forbidden']);
  if (forbidden != null) {
    dongtaiResponseDataItemsModulesModuleStatForward.forbidden = forbidden;
  }
  return dongtaiResponseDataItemsModulesModuleStatForward;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleStatForwardToJson(
    DongtaiResponseDataItemsModulesModuleStatForward entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['count'] = entity.count;
  data['forbidden'] = entity.forbidden;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleStatForwardExtension on DongtaiResponseDataItemsModulesModuleStatForward {
  DongtaiResponseDataItemsModulesModuleStatForward copyWith({
    int? count,
    bool? forbidden,
  }) {
    return DongtaiResponseDataItemsModulesModuleStatForward()
      ..count = count ?? this.count
      ..forbidden = forbidden ?? this.forbidden;
  }
}

DongtaiResponseDataItemsModulesModuleStatLike $DongtaiResponseDataItemsModulesModuleStatLikeFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsModulesModuleStatLike dongtaiResponseDataItemsModulesModuleStatLike = DongtaiResponseDataItemsModulesModuleStatLike();
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    dongtaiResponseDataItemsModulesModuleStatLike.count = count;
  }
  final bool? forbidden = jsonConvert.convert<bool>(json['forbidden']);
  if (forbidden != null) {
    dongtaiResponseDataItemsModulesModuleStatLike.forbidden = forbidden;
  }
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    dongtaiResponseDataItemsModulesModuleStatLike.status = status;
  }
  return dongtaiResponseDataItemsModulesModuleStatLike;
}

Map<String, dynamic> $DongtaiResponseDataItemsModulesModuleStatLikeToJson(
    DongtaiResponseDataItemsModulesModuleStatLike entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['count'] = entity.count;
  data['forbidden'] = entity.forbidden;
  data['status'] = entity.status;
  return data;
}

extension DongtaiResponseDataItemsModulesModuleStatLikeExtension on DongtaiResponseDataItemsModulesModuleStatLike {
  DongtaiResponseDataItemsModulesModuleStatLike copyWith({
    int? count,
    bool? forbidden,
    bool? status,
  }) {
    return DongtaiResponseDataItemsModulesModuleStatLike()
      ..count = count ?? this.count
      ..forbidden = forbidden ?? this.forbidden
      ..status = status ?? this.status;
  }
}

DongtaiResponseDataItemsOrig $DongtaiResponseDataItemsOrigFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrig dongtaiResponseDataItemsOrig = DongtaiResponseDataItemsOrig();
  final DongtaiResponseDataItemsOrigBasic? basic = jsonConvert.convert<
      DongtaiResponseDataItemsOrigBasic>(json['basic']);
  if (basic != null) {
    dongtaiResponseDataItemsOrig.basic = basic;
  }
  final String? idStr = jsonConvert.convert<String>(json['id_str']);
  if (idStr != null) {
    dongtaiResponseDataItemsOrig.idStr = idStr;
  }
  final DongtaiResponseDataItemsOrigModules? modules = jsonConvert.convert<
      DongtaiResponseDataItemsOrigModules>(json['modules']);
  if (modules != null) {
    dongtaiResponseDataItemsOrig.modules = modules;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsOrig.type = type;
  }
  final bool? visible = jsonConvert.convert<bool>(json['visible']);
  if (visible != null) {
    dongtaiResponseDataItemsOrig.visible = visible;
  }
  return dongtaiResponseDataItemsOrig;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigToJson(
    DongtaiResponseDataItemsOrig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['basic'] = entity.basic?.toJson();
  data['id_str'] = entity.idStr;
  data['modules'] = entity.modules?.toJson();
  data['type'] = entity.type;
  data['visible'] = entity.visible;
  return data;
}

extension DongtaiResponseDataItemsOrigExtension on DongtaiResponseDataItemsOrig {
  DongtaiResponseDataItemsOrig copyWith({
    DongtaiResponseDataItemsOrigBasic? basic,
    String? idStr,
    DongtaiResponseDataItemsOrigModules? modules,
    String? type,
    bool? visible,
  }) {
    return DongtaiResponseDataItemsOrig()
      ..basic = basic ?? this.basic
      ..idStr = idStr ?? this.idStr
      ..modules = modules ?? this.modules
      ..type = type ?? this.type
      ..visible = visible ?? this.visible;
  }
}

DongtaiResponseDataItemsOrigBasic $DongtaiResponseDataItemsOrigBasicFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigBasic dongtaiResponseDataItemsOrigBasic = DongtaiResponseDataItemsOrigBasic();
  final String? commentIdStr = jsonConvert.convert<String>(
      json['comment_id_str']);
  if (commentIdStr != null) {
    dongtaiResponseDataItemsOrigBasic.commentIdStr = commentIdStr;
  }
  final int? commentType = jsonConvert.convert<int>(json['comment_type']);
  if (commentType != null) {
    dongtaiResponseDataItemsOrigBasic.commentType = commentType;
  }
  final DongtaiResponseDataItemsOrigBasicLikeIcon? likeIcon = jsonConvert
      .convert<DongtaiResponseDataItemsOrigBasicLikeIcon>(json['like_icon']);
  if (likeIcon != null) {
    dongtaiResponseDataItemsOrigBasic.likeIcon = likeIcon;
  }
  final String? ridStr = jsonConvert.convert<String>(json['rid_str']);
  if (ridStr != null) {
    dongtaiResponseDataItemsOrigBasic.ridStr = ridStr;
  }
  return dongtaiResponseDataItemsOrigBasic;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigBasicToJson(
    DongtaiResponseDataItemsOrigBasic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['comment_id_str'] = entity.commentIdStr;
  data['comment_type'] = entity.commentType;
  data['like_icon'] = entity.likeIcon?.toJson();
  data['rid_str'] = entity.ridStr;
  return data;
}

extension DongtaiResponseDataItemsOrigBasicExtension on DongtaiResponseDataItemsOrigBasic {
  DongtaiResponseDataItemsOrigBasic copyWith({
    String? commentIdStr,
    int? commentType,
    DongtaiResponseDataItemsOrigBasicLikeIcon? likeIcon,
    String? ridStr,
  }) {
    return DongtaiResponseDataItemsOrigBasic()
      ..commentIdStr = commentIdStr ?? this.commentIdStr
      ..commentType = commentType ?? this.commentType
      ..likeIcon = likeIcon ?? this.likeIcon
      ..ridStr = ridStr ?? this.ridStr;
  }
}

DongtaiResponseDataItemsOrigBasicLikeIcon $DongtaiResponseDataItemsOrigBasicLikeIconFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigBasicLikeIcon dongtaiResponseDataItemsOrigBasicLikeIcon = DongtaiResponseDataItemsOrigBasicLikeIcon();
  final String? actionUrl = jsonConvert.convert<String>(json['action_url']);
  if (actionUrl != null) {
    dongtaiResponseDataItemsOrigBasicLikeIcon.actionUrl = actionUrl;
  }
  final String? endUrl = jsonConvert.convert<String>(json['end_url']);
  if (endUrl != null) {
    dongtaiResponseDataItemsOrigBasicLikeIcon.endUrl = endUrl;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    dongtaiResponseDataItemsOrigBasicLikeIcon.id = id;
  }
  final String? startUrl = jsonConvert.convert<String>(json['start_url']);
  if (startUrl != null) {
    dongtaiResponseDataItemsOrigBasicLikeIcon.startUrl = startUrl;
  }
  return dongtaiResponseDataItemsOrigBasicLikeIcon;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigBasicLikeIconToJson(
    DongtaiResponseDataItemsOrigBasicLikeIcon entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['action_url'] = entity.actionUrl;
  data['end_url'] = entity.endUrl;
  data['id'] = entity.id;
  data['start_url'] = entity.startUrl;
  return data;
}

extension DongtaiResponseDataItemsOrigBasicLikeIconExtension on DongtaiResponseDataItemsOrigBasicLikeIcon {
  DongtaiResponseDataItemsOrigBasicLikeIcon copyWith({
    String? actionUrl,
    String? endUrl,
    int? id,
    String? startUrl,
  }) {
    return DongtaiResponseDataItemsOrigBasicLikeIcon()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..endUrl = endUrl ?? this.endUrl
      ..id = id ?? this.id
      ..startUrl = startUrl ?? this.startUrl;
  }
}

DongtaiResponseDataItemsOrigModules $DongtaiResponseDataItemsOrigModulesFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModules dongtaiResponseDataItemsOrigModules = DongtaiResponseDataItemsOrigModules();
  final DongtaiResponseDataItemsOrigModulesModuleAuthor? moduleAuthor = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleAuthor>(
      json['module_author']);
  if (moduleAuthor != null) {
    dongtaiResponseDataItemsOrigModules.moduleAuthor = moduleAuthor;
  }
  final DongtaiResponseDataItemsOrigModulesModuleDynamic? moduleDynamic = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleDynamic>(
      json['module_dynamic']);
  if (moduleDynamic != null) {
    dongtaiResponseDataItemsOrigModules.moduleDynamic = moduleDynamic;
  }
  return dongtaiResponseDataItemsOrigModules;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigModulesToJson(
    DongtaiResponseDataItemsOrigModules entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['module_author'] = entity.moduleAuthor?.toJson();
  data['module_dynamic'] = entity.moduleDynamic?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesExtension on DongtaiResponseDataItemsOrigModules {
  DongtaiResponseDataItemsOrigModules copyWith({
    DongtaiResponseDataItemsOrigModulesModuleAuthor? moduleAuthor,
    DongtaiResponseDataItemsOrigModulesModuleDynamic? moduleDynamic,
  }) {
    return DongtaiResponseDataItemsOrigModules()
      ..moduleAuthor = moduleAuthor ?? this.moduleAuthor
      ..moduleDynamic = moduleDynamic ?? this.moduleDynamic;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthor $DongtaiResponseDataItemsOrigModulesModuleAuthorFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthor dongtaiResponseDataItemsOrigModulesModuleAuthor = DongtaiResponseDataItemsOrigModulesModuleAuthor();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar? avatar = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar>(
      json['avatar']);
  if (avatar != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.avatar = avatar;
  }
  final String? face = jsonConvert.convert<String>(json['face']);
  if (face != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.face = face;
  }
  final bool? faceNft = jsonConvert.convert<bool>(json['face_nft']);
  if (faceNft != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.faceNft = faceNft;
  }
  final dynamic following = json['following'];
  if (following != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.following = following;
  }
  final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
  if (jumpUrl != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.jumpUrl = jumpUrl;
  }
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.label = label;
  }
  final int? mid = jsonConvert.convert<int>(json['mid']);
  if (mid != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.mid = mid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.name = name;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify? officialVerify = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify>(
      json['official_verify']);
  if (officialVerify != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.officialVerify =
        officialVerify;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorPendant? pendant = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleAuthorPendant>(
      json['pendant']);
  if (pendant != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.pendant = pendant;
  }
  final String? pubAction = jsonConvert.convert<String>(json['pub_action']);
  if (pubAction != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.pubAction = pubAction;
  }
  final String? pubTime = jsonConvert.convert<String>(json['pub_time']);
  if (pubTime != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.pubTime = pubTime;
  }
  final int? pubTs = jsonConvert.convert<int>(json['pub_ts']);
  if (pubTs != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.pubTs = pubTs;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.type = type;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorVip? vip = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleAuthorVip>(json['vip']);
  if (vip != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthor.vip = vip;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthor;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar?.toJson();
  data['face'] = entity.face;
  data['face_nft'] = entity.faceNft;
  data['following'] = entity.following;
  data['jump_url'] = entity.jumpUrl;
  data['label'] = entity.label;
  data['mid'] = entity.mid;
  data['name'] = entity.name;
  data['official_verify'] = entity.officialVerify?.toJson();
  data['pendant'] = entity.pendant?.toJson();
  data['pub_action'] = entity.pubAction;
  data['pub_time'] = entity.pubTime;
  data['pub_ts'] = entity.pubTs;
  data['type'] = entity.type;
  data['vip'] = entity.vip?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorExtension on DongtaiResponseDataItemsOrigModulesModuleAuthor {
  DongtaiResponseDataItemsOrigModulesModuleAuthor copyWith({
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar? avatar,
    String? face,
    bool? faceNft,
    dynamic following,
    String? jumpUrl,
    String? label,
    int? mid,
    String? name,
    DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify? officialVerify,
    DongtaiResponseDataItemsOrigModulesModuleAuthorPendant? pendant,
    String? pubAction,
    String? pubTime,
    int? pubTs,
    String? type,
    DongtaiResponseDataItemsOrigModulesModuleAuthorVip? vip,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthor()
      ..avatar = avatar ?? this.avatar
      ..face = face ?? this.face
      ..faceNft = faceNft ?? this.faceNft
      ..following = following ?? this.following
      ..jumpUrl = jumpUrl ?? this.jumpUrl
      ..label = label ?? this.label
      ..mid = mid ?? this.mid
      ..name = name ?? this.name
      ..officialVerify = officialVerify ?? this.officialVerify
      ..pendant = pendant ?? this.pendant
      ..pubAction = pubAction ?? this.pubAction
      ..pubTime = pubTime ?? this.pubTime
      ..pubTs = pubTs ?? this.pubTs
      ..type = type ?? this.type
      ..vip = vip ?? this.vip;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar dongtaiResponseDataItemsOrigModulesModuleAuthorAvatar = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize? containerSize = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize>(
      json['container_size']);
  if (containerSize != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatar.containerSize =
        containerSize;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers? fallbackLayers = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers>(
      json['fallback_layers']);
  if (fallbackLayers != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatar.fallbackLayers =
        fallbackLayers;
  }
  final String? mid = jsonConvert.convert<String>(json['mid']);
  if (mid != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatar.mid = mid;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatar;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['container_size'] = entity.containerSize?.toJson();
  data['fallback_layers'] = entity.fallbackLayers?.toJson();
  data['mid'] = entity.mid;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar copyWith({
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize? containerSize,
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers? fallbackLayers,
    String? mid,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar()
      ..containerSize = containerSize ?? this.containerSize
      ..fallbackLayers = fallbackLayers ?? this.fallbackLayers
      ..mid = mid ?? this.mid;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSizeFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize();
  final double? height = jsonConvert.convert<double>(json['height']);
  if (height != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize.height =
        height;
  }
  final double? width = jsonConvert.convert<double>(json['width']);
  if (width != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize.width =
        width;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSizeToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['height'] = entity.height;
  data['width'] = entity.width;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSizeExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize copyWith({
    double? height,
    double? width,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize()
      ..height = height ?? this.height
      ..width = width ?? this.width;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers();
  final bool? isCriticalGroup = jsonConvert.convert<bool>(
      json['is_critical_group']);
  if (isCriticalGroup != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers
        .isCriticalGroup = isCriticalGroup;
  }
  final List<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers>? layers = (json['layers'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers>(
          e) as DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers)
      .toList();
  if (layers != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers.layers =
        layers;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['is_critical_group'] = entity.isCriticalGroup;
  data['layers'] = entity.layers?.map((v) => v.toJson()).toList();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers copyWith({
    bool? isCriticalGroup,
    List<
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers>? layers,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers()
      ..isCriticalGroup = isCriticalGroup ?? this.isCriticalGroup
      ..layers = layers ?? this.layers;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec? generalSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec>(
      json['general_spec']);
  if (generalSpec != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers
        .generalSpec = generalSpec;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig? layerConfig = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig>(
      json['layer_config']);
  if (layerConfig != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers
        .layerConfig = layerConfig;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource? resource = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource>(
      json['resource']);
  if (resource != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers
        .resource = resource;
  }
  final bool? visible = jsonConvert.convert<bool>(json['visible']);
  if (visible != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers
        .visible = visible;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['general_spec'] = entity.generalSpec?.toJson();
  data['layer_config'] = entity.layerConfig?.toJson();
  data['resource'] = entity.resource?.toJson();
  data['visible'] = entity.visible;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers copyWith(
      {
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec? generalSpec,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig? layerConfig,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource? resource,
        bool? visible,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers()
      ..generalSpec = generalSpec ?? this.generalSpec
      ..layerConfig = layerConfig ?? this.layerConfig
      ..resource = resource ?? this.resource
      ..visible = visible ?? this.visible;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec? posSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec>(
      json['pos_spec']);
  if (posSpec != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec
        .posSpec = posSpec;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec? renderSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec>(
      json['render_spec']);
  if (renderSpec != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec
        .renderSpec = renderSpec;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec? sizeSpec = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec>(
      json['size_spec']);
  if (sizeSpec != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec
        .sizeSpec = sizeSpec;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pos_spec'] = entity.posSpec?.toJson();
  data['render_spec'] = entity.renderSpec?.toJson();
  data['size_spec'] = entity.sizeSpec?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec copyWith(
      {
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec? posSpec,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec? renderSpec,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec? sizeSpec,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec()
      ..posSpec = posSpec ?? this.posSpec
      ..renderSpec = renderSpec ?? this.renderSpec
      ..sizeSpec = sizeSpec ?? this.sizeSpec;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec();
  final double? axisX = jsonConvert.convert<double>(json['axis_x']);
  if (axisX != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec
        .axisX = axisX;
  }
  final double? axisY = jsonConvert.convert<double>(json['axis_y']);
  if (axisY != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec
        .axisY = axisY;
  }
  final int? coordinatePos = jsonConvert.convert<int>(json['coordinate_pos']);
  if (coordinatePos != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec
        .coordinatePos = coordinatePos;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['axis_x'] = entity.axisX;
  data['axis_y'] = entity.axisY;
  data['coordinate_pos'] = entity.coordinatePos;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec copyWith(
      {
        double? axisX,
        double? axisY,
        int? coordinatePos,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec()
      ..axisX = axisX ?? this.axisX
      ..axisY = axisY ?? this.axisY
      ..coordinatePos = coordinatePos ?? this.coordinatePos;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec();
  final int? opacity = jsonConvert.convert<int>(json['opacity']);
  if (opacity != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec
        .opacity = opacity;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['opacity'] = entity.opacity;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec copyWith(
      {
        int? opacity,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec()
      ..opacity = opacity ?? this.opacity;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec();
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec
        .height = height;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec
        .width = width;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['height'] = entity.height;
  data['width'] = entity.width;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec copyWith(
      {
        int? height,
        int? width,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec()
      ..height = height ?? this.height
      ..width = width ?? this.width;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig();
  final bool? isCritical = jsonConvert.convert<bool>(json['is_critical']);
  if (isCritical != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig
        .isCritical = isCritical;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags? tags = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags>(
      json['tags']);
  if (tags != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig
        .tags = tags;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['is_critical'] = entity.isCritical;
  data['tags'] = entity.tags?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig copyWith(
      {
        bool? isCritical,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags? tags,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig()
      ..isCritical = isCritical ?? this.isCritical
      ..tags = tags ?? this.tags;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer? avatarLayer = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer>(
      json['AVATAR_LAYER']);
  if (avatarLayer != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags
        .avatarLayer = avatarLayer;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg? generalCfg = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg>(
      json['GENERAL_CFG']);
  if (generalCfg != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags
        .generalCfg = generalCfg;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['AVATAR_LAYER'] = entity.avatarLayer?.toJson();
  data['GENERAL_CFG'] = entity.generalCfg?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags copyWith(
      {
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer? avatarLayer,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg? generalCfg,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags()
      ..avatarLayer = avatarLayer ?? this.avatarLayer
      ..generalCfg = generalCfg ?? this.generalCfg;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer();
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer {
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg();
  final int? configType = jsonConvert.convert<int>(json['config_type']);
  if (configType != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg
        .configType = configType;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig? generalConfig = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig>(
      json['general_config']);
  if (generalConfig != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg
        .generalConfig = generalConfig;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['config_type'] = entity.configType;
  data['general_config'] = entity.generalConfig?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg copyWith(
      {
        int? configType,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig? generalConfig,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg()
      ..configType = configType ?? this.configType
      ..generalConfig = generalConfig ?? this.generalConfig;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle? webCssStyle = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle>(
      json['web_css_style']);
  if (webCssStyle != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig
        .webCssStyle = webCssStyle;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['web_css_style'] = entity.webCssStyle?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig copyWith(
      {
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle? webCssStyle,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig()
      ..webCssStyle = webCssStyle ?? this.webCssStyle;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle();
  final String? borderRadius = jsonConvert.convert<String>(
      json['borderRadius']);
  if (borderRadius != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle
        .borderRadius = borderRadius;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['borderRadius'] = entity.borderRadius;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle copyWith(
      {
        String? borderRadius,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle()
      ..borderRadius = borderRadius ?? this.borderRadius;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage? resImage = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage>(
      json['res_image']);
  if (resImage != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource
        .resImage = resImage;
  }
  final int? resType = jsonConvert.convert<int>(json['res_type']);
  if (resType != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource
        .resType = resType;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['res_image'] = entity.resImage?.toJson();
  data['res_type'] = entity.resType;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource copyWith(
      {
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage? resImage,
        int? resType,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource()
      ..resImage = resImage ?? this.resImage
      ..resType = resType ?? this.resType;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage();
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc? imageSrc = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc>(
      json['image_src']);
  if (imageSrc != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage
        .imageSrc = imageSrc;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image_src'] = entity.imageSrc?.toJson();
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage copyWith(
      {
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc? imageSrc,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage()
      ..imageSrc = imageSrc ?? this.imageSrc;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc();
  final int? placeholder = jsonConvert.convert<int>(json['placeholder']);
  if (placeholder != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc
        .placeholder = placeholder;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote? remote = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote>(
      json['remote']);
  if (remote != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc
        .remote = remote;
  }
  final int? srcType = jsonConvert.convert<int>(json['src_type']);
  if (srcType != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc
        .srcType = srcType;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['placeholder'] = entity.placeholder;
  data['remote'] = entity.remote?.toJson();
  data['src_type'] = entity.srcType;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc copyWith(
      {
        int? placeholder,
        DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote? remote,
        int? srcType,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc()
      ..placeholder = placeholder ?? this.placeholder
      ..remote = remote ?? this.remote
      ..srcType = srcType ?? this.srcType;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote = DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote();
  final String? bfsStyle = jsonConvert.convert<String>(json['bfs_style']);
  if (bfsStyle != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote
        .bfsStyle = bfsStyle;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote
        .url = url;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bfs_style'] = entity.bfsStyle;
  data['url'] = entity.url;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote {
  DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote copyWith(
      {
        String? bfsStyle,
        String? url,
      }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote()
      ..bfsStyle = bfsStyle ?? this.bfsStyle
      ..url = url ?? this.url;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify $DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerifyFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify dongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify = DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify.desc = desc;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify.type = type;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerifyToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerifyExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify {
  DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify copyWith({
    String? desc,
    int? type,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify()
      ..desc = desc ?? this.desc
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorPendant $DongtaiResponseDataItemsOrigModulesModuleAuthorPendantFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorPendant dongtaiResponseDataItemsOrigModulesModuleAuthorPendant = DongtaiResponseDataItemsOrigModulesModuleAuthorPendant();
  final int? expire = jsonConvert.convert<int>(json['expire']);
  if (expire != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorPendant.expire = expire;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorPendant.image = image;
  }
  final String? imageEnhance = jsonConvert.convert<String>(
      json['image_enhance']);
  if (imageEnhance != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorPendant.imageEnhance =
        imageEnhance;
  }
  final String? imageEnhanceFrame = jsonConvert.convert<String>(
      json['image_enhance_frame']);
  if (imageEnhanceFrame != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorPendant.imageEnhanceFrame =
        imageEnhanceFrame;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorPendant.name = name;
  }
  final int? pid = jsonConvert.convert<int>(json['pid']);
  if (pid != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorPendant.pid = pid;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorPendant;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorPendantToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorPendant entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['expire'] = entity.expire;
  data['image'] = entity.image;
  data['image_enhance'] = entity.imageEnhance;
  data['image_enhance_frame'] = entity.imageEnhanceFrame;
  data['name'] = entity.name;
  data['pid'] = entity.pid;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorPendantExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorPendant {
  DongtaiResponseDataItemsOrigModulesModuleAuthorPendant copyWith({
    int? expire,
    String? image,
    String? imageEnhance,
    String? imageEnhanceFrame,
    String? name,
    int? pid,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorPendant()
      ..expire = expire ?? this.expire
      ..image = image ?? this.image
      ..imageEnhance = imageEnhance ?? this.imageEnhance
      ..imageEnhanceFrame = imageEnhanceFrame ?? this.imageEnhanceFrame
      ..name = name ?? this.name
      ..pid = pid ?? this.pid;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorVip $DongtaiResponseDataItemsOrigModulesModuleAuthorVipFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorVip dongtaiResponseDataItemsOrigModulesModuleAuthorVip = DongtaiResponseDataItemsOrigModulesModuleAuthorVip();
  final int? avatarSubscript = jsonConvert.convert<int>(
      json['avatar_subscript']);
  if (avatarSubscript != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.avatarSubscript =
        avatarSubscript;
  }
  final String? avatarSubscriptUrl = jsonConvert.convert<String>(
      json['avatar_subscript_url']);
  if (avatarSubscriptUrl != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.avatarSubscriptUrl =
        avatarSubscriptUrl;
  }
  final int? dueDate = jsonConvert.convert<int>(json['due_date']);
  if (dueDate != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.dueDate = dueDate;
  }
  final DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel? label = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel>(
      json['label']);
  if (label != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.label = label;
  }
  final String? nicknameColor = jsonConvert.convert<String>(
      json['nickname_color']);
  if (nicknameColor != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.nicknameColor =
        nicknameColor;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.status = status;
  }
  final int? themeType = jsonConvert.convert<int>(json['theme_type']);
  if (themeType != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.themeType = themeType;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVip.type = type;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorVip;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorVipToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorVip entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar_subscript'] = entity.avatarSubscript;
  data['avatar_subscript_url'] = entity.avatarSubscriptUrl;
  data['due_date'] = entity.dueDate;
  data['label'] = entity.label?.toJson();
  data['nickname_color'] = entity.nicknameColor;
  data['status'] = entity.status;
  data['theme_type'] = entity.themeType;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorVipExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorVip {
  DongtaiResponseDataItemsOrigModulesModuleAuthorVip copyWith({
    int? avatarSubscript,
    String? avatarSubscriptUrl,
    int? dueDate,
    DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel? label,
    String? nicknameColor,
    int? status,
    int? themeType,
    int? type,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorVip()
      ..avatarSubscript = avatarSubscript ?? this.avatarSubscript
      ..avatarSubscriptUrl = avatarSubscriptUrl ?? this.avatarSubscriptUrl
      ..dueDate = dueDate ?? this.dueDate
      ..label = label ?? this.label
      ..nicknameColor = nicknameColor ?? this.nicknameColor
      ..status = status ?? this.status
      ..themeType = themeType ?? this.themeType
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel $DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabelFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel = DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel();
  final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
  if (bgColor != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.bgColor = bgColor;
  }
  final int? bgStyle = jsonConvert.convert<int>(json['bg_style']);
  if (bgStyle != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.bgStyle = bgStyle;
  }
  final String? borderColor = jsonConvert.convert<String>(json['border_color']);
  if (borderColor != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.borderColor =
        borderColor;
  }
  final String? imgLabelUriHans = jsonConvert.convert<String>(
      json['img_label_uri_hans']);
  if (imgLabelUriHans != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.imgLabelUriHans =
        imgLabelUriHans;
  }
  final String? imgLabelUriHansStatic = jsonConvert.convert<String>(
      json['img_label_uri_hans_static']);
  if (imgLabelUriHansStatic != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel
        .imgLabelUriHansStatic = imgLabelUriHansStatic;
  }
  final String? imgLabelUriHant = jsonConvert.convert<String>(
      json['img_label_uri_hant']);
  if (imgLabelUriHant != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.imgLabelUriHant =
        imgLabelUriHant;
  }
  final String? imgLabelUriHantStatic = jsonConvert.convert<String>(
      json['img_label_uri_hant_static']);
  if (imgLabelUriHantStatic != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel
        .imgLabelUriHantStatic = imgLabelUriHantStatic;
  }
  final String? labelTheme = jsonConvert.convert<String>(json['label_theme']);
  if (labelTheme != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.labelTheme =
        labelTheme;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.path = path;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.text = text;
  }
  final String? textColor = jsonConvert.convert<String>(json['text_color']);
  if (textColor != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.textColor =
        textColor;
  }
  final bool? useImgLabel = jsonConvert.convert<bool>(json['use_img_label']);
  if (useImgLabel != null) {
    dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.useImgLabel =
        useImgLabel;
  }
  return dongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabelToJson(
    DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bg_color'] = entity.bgColor;
  data['bg_style'] = entity.bgStyle;
  data['border_color'] = entity.borderColor;
  data['img_label_uri_hans'] = entity.imgLabelUriHans;
  data['img_label_uri_hans_static'] = entity.imgLabelUriHansStatic;
  data['img_label_uri_hant'] = entity.imgLabelUriHant;
  data['img_label_uri_hant_static'] = entity.imgLabelUriHantStatic;
  data['label_theme'] = entity.labelTheme;
  data['path'] = entity.path;
  data['text'] = entity.text;
  data['text_color'] = entity.textColor;
  data['use_img_label'] = entity.useImgLabel;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabelExtension on DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel {
  DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel copyWith({
    String? bgColor,
    int? bgStyle,
    String? borderColor,
    String? imgLabelUriHans,
    String? imgLabelUriHansStatic,
    String? imgLabelUriHant,
    String? imgLabelUriHantStatic,
    String? labelTheme,
    String? path,
    String? text,
    String? textColor,
    bool? useImgLabel,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel()
      ..bgColor = bgColor ?? this.bgColor
      ..bgStyle = bgStyle ?? this.bgStyle
      ..borderColor = borderColor ?? this.borderColor
      ..imgLabelUriHans = imgLabelUriHans ?? this.imgLabelUriHans
      ..imgLabelUriHansStatic = imgLabelUriHansStatic ??
          this.imgLabelUriHansStatic
      ..imgLabelUriHant = imgLabelUriHant ?? this.imgLabelUriHant
      ..imgLabelUriHantStatic = imgLabelUriHantStatic ??
          this.imgLabelUriHantStatic
      ..labelTheme = labelTheme ?? this.labelTheme
      ..path = path ?? this.path
      ..text = text ?? this.text
      ..textColor = textColor ?? this.textColor
      ..useImgLabel = useImgLabel ?? this.useImgLabel;
  }
}

DongtaiResponseDataItemsOrigModulesModuleDynamic $DongtaiResponseDataItemsOrigModulesModuleDynamicFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleDynamic dongtaiResponseDataItemsOrigModulesModuleDynamic = DongtaiResponseDataItemsOrigModulesModuleDynamic();
  final dynamic additional = json['additional'];
  if (additional != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamic.additional = additional;
  }
  final dynamic desc = json['desc'];
  if (desc != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamic.desc = desc;
  }
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajor? major = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleDynamicMajor>(
      json['major']);
  if (major != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamic.major = major;
  }
  final dynamic topic = json['topic'];
  if (topic != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamic.topic = topic;
  }
  return dongtaiResponseDataItemsOrigModulesModuleDynamic;
}

Map<String, dynamic> $DongtaiResponseDataItemsOrigModulesModuleDynamicToJson(
    DongtaiResponseDataItemsOrigModulesModuleDynamic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['additional'] = entity.additional;
  data['desc'] = entity.desc;
  data['major'] = entity.major?.toJson();
  data['topic'] = entity.topic;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleDynamicExtension on DongtaiResponseDataItemsOrigModulesModuleDynamic {
  DongtaiResponseDataItemsOrigModulesModuleDynamic copyWith({
    dynamic additional,
    dynamic desc,
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajor? major,
    dynamic topic,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleDynamic()
      ..additional = additional ?? this.additional
      ..desc = desc ?? this.desc
      ..major = major ?? this.major
      ..topic = topic ?? this.topic;
  }
}

DongtaiResponseDataItemsOrigModulesModuleDynamicMajor $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajor dongtaiResponseDataItemsOrigModulesModuleDynamicMajor = DongtaiResponseDataItemsOrigModulesModuleDynamicMajor();
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive? archive = jsonConvert
      .convert<DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive>(
      json['archive']);
  if (archive != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajor.archive = archive;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajor.type = type;
  }
  return dongtaiResponseDataItemsOrigModulesModuleDynamicMajor;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorToJson(
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['archive'] = entity.archive?.toJson();
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleDynamicMajorExtension on DongtaiResponseDataItemsOrigModulesModuleDynamicMajor {
  DongtaiResponseDataItemsOrigModulesModuleDynamicMajor copyWith({
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive? archive,
    String? type,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleDynamicMajor()
      ..archive = archive ?? this.archive
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive = DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive();
  final String? aid = jsonConvert.convert<String>(json['aid']);
  if (aid != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.aid = aid;
  }
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge? badge = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge>(
      json['badge']);
  if (badge != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.badge = badge;
  }
  final String? bvid = jsonConvert.convert<String>(json['bvid']);
  if (bvid != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.bvid = bvid;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.cover = cover;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.desc = desc;
  }
  final int? disablePreview = jsonConvert.convert<int>(json['disable_preview']);
  if (disablePreview != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive
        .disablePreview = disablePreview;
  }
  final String? durationText = jsonConvert.convert<String>(
      json['duration_text']);
  if (durationText != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.durationText =
        durationText;
  }
  final String? jumpUrl = jsonConvert.convert<String>(json['jump_url']);
  if (jumpUrl != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.jumpUrl =
        jumpUrl;
  }
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat? stat = jsonConvert
      .convert<
      DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat>(
      json['stat']);
  if (stat != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.stat = stat;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.title = title;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.type = type;
  }
  return dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveToJson(
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['aid'] = entity.aid;
  data['badge'] = entity.badge?.toJson();
  data['bvid'] = entity.bvid;
  data['cover'] = entity.cover;
  data['desc'] = entity.desc;
  data['disable_preview'] = entity.disablePreview;
  data['duration_text'] = entity.durationText;
  data['jump_url'] = entity.jumpUrl;
  data['stat'] = entity.stat?.toJson();
  data['title'] = entity.title;
  data['type'] = entity.type;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveExtension on DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive {
  DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive copyWith({
    String? aid,
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge? badge,
    String? bvid,
    String? cover,
    String? desc,
    int? disablePreview,
    String? durationText,
    String? jumpUrl,
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat? stat,
    String? title,
    int? type,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive()
      ..aid = aid ?? this.aid
      ..badge = badge ?? this.badge
      ..bvid = bvid ?? this.bvid
      ..cover = cover ?? this.cover
      ..desc = desc ?? this.desc
      ..disablePreview = disablePreview ?? this.disablePreview
      ..durationText = durationText ?? this.durationText
      ..jumpUrl = jumpUrl ?? this.jumpUrl
      ..stat = stat ?? this.stat
      ..title = title ?? this.title
      ..type = type ?? this.type;
  }
}

DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadgeFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge = DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge();
  final String? bgColor = jsonConvert.convert<String>(json['bg_color']);
  if (bgColor != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge.bgColor =
        bgColor;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge.color =
        color;
  }
  final dynamic iconUrl = json['icon_url'];
  if (iconUrl != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge.iconUrl =
        iconUrl;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge.text =
        text;
  }
  return dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadgeToJson(
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bg_color'] = entity.bgColor;
  data['color'] = entity.color;
  data['icon_url'] = entity.iconUrl;
  data['text'] = entity.text;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadgeExtension on DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge {
  DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge copyWith({
    String? bgColor,
    String? color,
    dynamic iconUrl,
    String? text,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge()
      ..bgColor = bgColor ?? this.bgColor
      ..color = color ?? this.color
      ..iconUrl = iconUrl ?? this.iconUrl
      ..text = text ?? this.text;
  }
}

DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStatFromJson(
    Map<String, dynamic> json) {
  final DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat = DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat();
  final String? danmaku = jsonConvert.convert<String>(json['danmaku']);
  if (danmaku != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat.danmaku =
        danmaku;
  }
  final String? play = jsonConvert.convert<String>(json['play']);
  if (play != null) {
    dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat.play =
        play;
  }
  return dongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat;
}

Map<String,
    dynamic> $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStatToJson(
    DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['danmaku'] = entity.danmaku;
  data['play'] = entity.play;
  return data;
}

extension DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStatExtension on DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat {
  DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat copyWith({
    String? danmaku,
    String? play,
  }) {
    return DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat()
      ..danmaku = danmaku ?? this.danmaku
      ..play = play ?? this.play;
  }
}