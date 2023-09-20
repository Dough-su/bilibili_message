import 'package:muse_siixn_i/generated/json/base/json_field.dart';
import 'package:muse_siixn_i/generated/json/dongtai_response_entity.g.dart';
import 'dart:convert';
export 'package:muse_siixn_i/generated/json/dongtai_response_entity.g.dart';

@JsonSerializable()
class DongtaiResponseEntity {
	int? code;
	String? message;
	int? ttl;
	DongtaiResponseData? data;

	DongtaiResponseEntity();

	factory DongtaiResponseEntity.fromJson(Map<String, dynamic> json) => $DongtaiResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseData {
	@JSONField(name: "has_more")
	bool? hasMore;
	List<DongtaiResponseDataItems>? items;
	String? offset;
	@JSONField(name: "update_baseline")
	String? updateBaseline;
	@JSONField(name: "update_num")
	int? updateNum;

	DongtaiResponseData();

	factory DongtaiResponseData.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItems {
	DongtaiResponseDataItemsBasic? basic;
	@JSONField(name: "id_str")
	String? idStr;
	DongtaiResponseDataItemsModules? modules;
	String? type;
	bool? visible;
	DongtaiResponseDataItemsOrig? orig;

	DongtaiResponseDataItems();

	factory DongtaiResponseDataItems.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsBasic {
	@JSONField(name: "comment_id_str")
	String? commentIdStr;
	@JSONField(name: "comment_type")
	int? commentType;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	@JSONField(name: "like_icon")
	DongtaiResponseDataItemsBasicLikeIcon? likeIcon;
	@JSONField(name: "rid_str")
	String? ridStr;

	DongtaiResponseDataItemsBasic();

	factory DongtaiResponseDataItemsBasic.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsBasicFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsBasicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsBasicLikeIcon {
	@JSONField(name: "action_url")
	String? actionUrl;
	@JSONField(name: "end_url")
	String? endUrl;
	int? id;
	@JSONField(name: "start_url")
	String? startUrl;

	DongtaiResponseDataItemsBasicLikeIcon();

	factory DongtaiResponseDataItemsBasicLikeIcon.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsBasicLikeIconFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsBasicLikeIconToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModules {
	@JSONField(name: "module_author")
	DongtaiResponseDataItemsModulesModuleAuthor? moduleAuthor;
	@JSONField(name: "module_dynamic")
	DongtaiResponseDataItemsModulesModuleDynamic? moduleDynamic;
	@JSONField(name: "module_interaction")
	DongtaiResponseDataItemsModulesModuleInteraction? moduleInteraction;
	@JSONField(name: "module_more")
	DongtaiResponseDataItemsModulesModuleMore? moduleMore;
	@JSONField(name: "module_stat")
	DongtaiResponseDataItemsModulesModuleStat? moduleStat;

	DongtaiResponseDataItemsModules();

	factory DongtaiResponseDataItemsModules.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthor {
	DongtaiResponseDataItemsModulesModuleAuthorAvatar? avatar;
	DongtaiResponseDataItemsModulesModuleAuthorDecorate? decorate;
	String? face;
	@JSONField(name: "face_nft")
	bool? faceNft;
	dynamic following;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	String? label;
	int? mid;
	String? name;
	@JSONField(name: "official_verify")
	DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify? officialVerify;
	DongtaiResponseDataItemsModulesModuleAuthorPendant? pendant;
	@JSONField(name: "pub_action")
	String? pubAction;
	@JSONField(name: "pub_location_text")
	String? pubLocationText;
	@JSONField(name: "pub_time")
	String? pubTime;
	@JSONField(name: "pub_ts")
	int? pubTs;
	String? type;
	DongtaiResponseDataItemsModulesModuleAuthorVip? vip;

	DongtaiResponseDataItemsModulesModuleAuthor();

	factory DongtaiResponseDataItemsModulesModuleAuthor.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatar {
	@JSONField(name: "container_size")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize? containerSize;
	@JSONField(name: "fallback_layers")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers? fallbackLayers;
	String? mid;

	DongtaiResponseDataItemsModulesModuleAuthorAvatar();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatar.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize {
	double? height;
	double? width;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSize.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSizeFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarContainerSizeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers {
	@JSONField(name: "is_critical_group")
	bool? isCriticalGroup;
	List<DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers>? layers;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayers.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers {
	@JSONField(name: "general_spec")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec? generalSpec;
	@JSONField(name: "layer_config")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig? layerConfig;
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource? resource;
	bool? visible;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayers.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec {
	@JSONField(name: "pos_spec")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec? posSpec;
	@JSONField(name: "render_spec")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec? renderSpec;
	@JSONField(name: "size_spec")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec? sizeSpec;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec {
	@JSONField(name: "axis_x")
	double? axisX;
	@JSONField(name: "axis_y")
	double? axisY;
	@JSONField(name: "coordinate_pos")
	int? coordinatePos;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec {
	int? opacity;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec {
	double? height;
	double? width;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig {
	@JSONField(name: "is_critical")
	bool? isCritical;
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags? tags;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags {
	@JSONField(name: "AVATAR_LAYER")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer? avatarLayer;
	@JSONField(name: "GENERAL_CFG")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg? generalCfg;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer {


	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg {
	@JSONField(name: "config_type")
	int? configType;
	@JSONField(name: "general_config")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig? generalConfig;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig {
	@JSONField(name: "web_css_style")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle? webCssStyle;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle {
	String? borderRadius;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource {
	@JSONField(name: "res_image")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage? resImage;
	@JSONField(name: "res_type")
	int? resType;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResource.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage {
	@JSONField(name: "image_src")
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc? imageSrc;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc {
	int? placeholder;
	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote? remote;
	@JSONField(name: "src_type")
	int? srcType;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote {
	@JSONField(name: "bfs_style")
	String? bfsStyle;
	String? url;

	DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote();

	factory DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorDecorate {
	@JSONField(name: "card_url")
	String? cardUrl;
	DongtaiResponseDataItemsModulesModuleAuthorDecorateFan? fan;
	int? id;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	String? name;
	int? type;

	DongtaiResponseDataItemsModulesModuleAuthorDecorate();

	factory DongtaiResponseDataItemsModulesModuleAuthorDecorate.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorDecorateFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorDecorateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorDecorateFan {
	String? color;
	@JSONField(name: "is_fan")
	bool? isFan;
	@JSONField(name: "num_str")
	String? numStr;
	int? number;

	DongtaiResponseDataItemsModulesModuleAuthorDecorateFan();

	factory DongtaiResponseDataItemsModulesModuleAuthorDecorateFan.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorDecorateFanFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorDecorateFanToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify {
	String? desc;
	int? type;

	DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify();

	factory DongtaiResponseDataItemsModulesModuleAuthorOfficialVerify.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorOfficialVerifyFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorOfficialVerifyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorPendant {
	int? expire;
	String? image;
	@JSONField(name: "image_enhance")
	String? imageEnhance;
	@JSONField(name: "image_enhance_frame")
	String? imageEnhanceFrame;
	String? name;
	int? pid;

	DongtaiResponseDataItemsModulesModuleAuthorPendant();

	factory DongtaiResponseDataItemsModulesModuleAuthorPendant.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorPendantFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorPendantToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorVip {
	@JSONField(name: "avatar_subscript")
	int? avatarSubscript;
	@JSONField(name: "avatar_subscript_url")
	String? avatarSubscriptUrl;
	@JSONField(name: "due_date")
	int? dueDate;
	DongtaiResponseDataItemsModulesModuleAuthorVipLabel? label;
	@JSONField(name: "nickname_color")
	String? nicknameColor;
	int? status;
	@JSONField(name: "theme_type")
	int? themeType;
	int? type;

	DongtaiResponseDataItemsModulesModuleAuthorVip();

	factory DongtaiResponseDataItemsModulesModuleAuthorVip.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorVipFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorVipToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleAuthorVipLabel {
	@JSONField(name: "bg_color")
	String? bgColor;
	@JSONField(name: "bg_style")
	int? bgStyle;
	@JSONField(name: "border_color")
	String? borderColor;
	@JSONField(name: "img_label_uri_hans")
	String? imgLabelUriHans;
	@JSONField(name: "img_label_uri_hans_static")
	String? imgLabelUriHansStatic;
	@JSONField(name: "img_label_uri_hant")
	String? imgLabelUriHant;
	@JSONField(name: "img_label_uri_hant_static")
	String? imgLabelUriHantStatic;
	@JSONField(name: "label_theme")
	String? labelTheme;
	String? path;
	String? text;
	@JSONField(name: "text_color")
	String? textColor;
	@JSONField(name: "use_img_label")
	bool? useImgLabel;

	DongtaiResponseDataItemsModulesModuleAuthorVipLabel();

	factory DongtaiResponseDataItemsModulesModuleAuthorVipLabel.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleAuthorVipLabelFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleAuthorVipLabelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleDynamic {
	dynamic additional;
	dynamic desc;
	DongtaiResponseDataItemsModulesModuleDynamicMajor? major;
	dynamic topic;

	DongtaiResponseDataItemsModulesModuleDynamic();

	factory DongtaiResponseDataItemsModulesModuleDynamic.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleDynamicFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleDynamicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleDynamicMajor {
	DongtaiResponseDataItemsModulesModuleDynamicMajorOpus? opus;
	String? type;

	DongtaiResponseDataItemsModulesModuleDynamicMajor();

	factory DongtaiResponseDataItemsModulesModuleDynamicMajor.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleDynamicMajorFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleDynamicMajorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleDynamicMajorOpus {
	@JSONField(name: "fold_action")
	List<String>? foldAction;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	List<DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics>? pics;
	DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary? summary;
	dynamic title;

	DongtaiResponseDataItemsModulesModuleDynamicMajorOpus();

	factory DongtaiResponseDataItemsModulesModuleDynamicMajorOpus.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics {
	int? height;
	double? size;
	String? url;
	int? width;

	DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics();

	factory DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPics.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPicsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusPicsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary {
	@JSONField(name: "rich_text_nodes")
	List<DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes>? richTextNodes;
	String? text;

	DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary();

	factory DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummary.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes {
	@JSONField(name: "orig_text")
	String? origText;
	String? text;
	String? type;

	DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes();

	factory DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodes.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodesFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleDynamicMajorOpusSummaryRichTextNodesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleInteraction {
	List<DongtaiResponseDataItemsModulesModuleInteractionItems>? items;

	DongtaiResponseDataItemsModulesModuleInteraction();

	factory DongtaiResponseDataItemsModulesModuleInteraction.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleInteractionFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleInteractionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleInteractionItems {
	DongtaiResponseDataItemsModulesModuleInteractionItemsDesc? desc;
	int? type;

	DongtaiResponseDataItemsModulesModuleInteractionItems();

	factory DongtaiResponseDataItemsModulesModuleInteractionItems.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleInteractionItemsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleInteractionItemsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleInteractionItemsDesc {
	@JSONField(name: "rich_text_nodes")
	List<DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes>? richTextNodes;
	String? text;

	DongtaiResponseDataItemsModulesModuleInteractionItemsDesc();

	factory DongtaiResponseDataItemsModulesModuleInteractionItemsDesc.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleInteractionItemsDescFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleInteractionItemsDescToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes {
	@JSONField(name: "orig_text")
	String? origText;
	String? rid;
	String? text;
	String? type;

	DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes();

	factory DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodes.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodesFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleInteractionItemsDescRichTextNodesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleMore {
	@JSONField(name: "three_point_items")
	List<DongtaiResponseDataItemsModulesModuleMoreThreePointItems>? threePointItems;

	DongtaiResponseDataItemsModulesModuleMore();

	factory DongtaiResponseDataItemsModulesModuleMore.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleMoreFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleMoreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleMoreThreePointItems {
	String? label;
	DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams? params;
	String? type;
	DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal? modal;

	DongtaiResponseDataItemsModulesModuleMoreThreePointItems();

	factory DongtaiResponseDataItemsModulesModuleMoreThreePointItems.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams {
	@JSONField(name: "dynamic_id")
	String? dynamicId;
	bool? status;

	DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams();

	factory DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParams.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParamsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsParamsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal {
	String? cancel;
	String? confirm;
	String? content;
	String? title;

	DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal();

	factory DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModal.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModalFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleMoreThreePointItemsModalToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleStat {
	DongtaiResponseDataItemsModulesModuleStatComment? comment;
	DongtaiResponseDataItemsModulesModuleStatForward? forward;
	DongtaiResponseDataItemsModulesModuleStatLike? like;

	DongtaiResponseDataItemsModulesModuleStat();

	factory DongtaiResponseDataItemsModulesModuleStat.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleStatFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleStatToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleStatComment {
	int? count;
	bool? forbidden;

	DongtaiResponseDataItemsModulesModuleStatComment();

	factory DongtaiResponseDataItemsModulesModuleStatComment.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleStatCommentFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleStatCommentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleStatForward {
	int? count;
	bool? forbidden;

	DongtaiResponseDataItemsModulesModuleStatForward();

	factory DongtaiResponseDataItemsModulesModuleStatForward.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleStatForwardFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleStatForwardToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsModulesModuleStatLike {
	int? count;
	bool? forbidden;
	bool? status;

	DongtaiResponseDataItemsModulesModuleStatLike();

	factory DongtaiResponseDataItemsModulesModuleStatLike.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsModulesModuleStatLikeFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsModulesModuleStatLikeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrig {
	DongtaiResponseDataItemsOrigBasic? basic;
	@JSONField(name: "id_str")
	String? idStr;
	DongtaiResponseDataItemsOrigModules? modules;
	String? type;
	bool? visible;

	DongtaiResponseDataItemsOrig();

	factory DongtaiResponseDataItemsOrig.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigBasic {
	@JSONField(name: "comment_id_str")
	String? commentIdStr;
	@JSONField(name: "comment_type")
	int? commentType;
	@JSONField(name: "like_icon")
	DongtaiResponseDataItemsOrigBasicLikeIcon? likeIcon;
	@JSONField(name: "rid_str")
	String? ridStr;

	DongtaiResponseDataItemsOrigBasic();

	factory DongtaiResponseDataItemsOrigBasic.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigBasicFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigBasicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigBasicLikeIcon {
	@JSONField(name: "action_url")
	String? actionUrl;
	@JSONField(name: "end_url")
	String? endUrl;
	int? id;
	@JSONField(name: "start_url")
	String? startUrl;

	DongtaiResponseDataItemsOrigBasicLikeIcon();

	factory DongtaiResponseDataItemsOrigBasicLikeIcon.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigBasicLikeIconFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigBasicLikeIconToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModules {
	@JSONField(name: "module_author")
	DongtaiResponseDataItemsOrigModulesModuleAuthor? moduleAuthor;
	@JSONField(name: "module_dynamic")
	DongtaiResponseDataItemsOrigModulesModuleDynamic? moduleDynamic;

	DongtaiResponseDataItemsOrigModules();

	factory DongtaiResponseDataItemsOrigModules.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthor {
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar? avatar;
	String? face;
	@JSONField(name: "face_nft")
	bool? faceNft;
	dynamic following;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	String? label;
	int? mid;
	String? name;
	@JSONField(name: "official_verify")
	DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify? officialVerify;
	DongtaiResponseDataItemsOrigModulesModuleAuthorPendant? pendant;
	@JSONField(name: "pub_action")
	String? pubAction;
	@JSONField(name: "pub_time")
	String? pubTime;
	@JSONField(name: "pub_ts")
	int? pubTs;
	String? type;
	DongtaiResponseDataItemsOrigModulesModuleAuthorVip? vip;

	DongtaiResponseDataItemsOrigModulesModuleAuthor();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthor.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar {
	@JSONField(name: "container_size")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize? containerSize;
	@JSONField(name: "fallback_layers")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers? fallbackLayers;
	String? mid;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatar.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize {
	double? height;
	double? width;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSize.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSizeFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarContainerSizeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers {
	@JSONField(name: "is_critical_group")
	bool? isCriticalGroup;
	List<DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers>? layers;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayers.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers {
	@JSONField(name: "general_spec")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec? generalSpec;
	@JSONField(name: "layer_config")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig? layerConfig;
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource? resource;
	bool? visible;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayers.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec {
	@JSONField(name: "pos_spec")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec? posSpec;
	@JSONField(name: "render_spec")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec? renderSpec;
	@JSONField(name: "size_spec")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec? sizeSpec;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec {
	@JSONField(name: "axis_x")
	double? axisX;
	@JSONField(name: "axis_y")
	double? axisY;
	@JSONField(name: "coordinate_pos")
	int? coordinatePos;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecPosSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec {
	int? opacity;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecRenderSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec {
	int? height;
	int? width;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpec.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersGeneralSpecSizeSpecToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig {
	@JSONField(name: "is_critical")
	bool? isCritical;
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags? tags;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfig.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags {
	@JSONField(name: "AVATAR_LAYER")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer? avatarLayer;
	@JSONField(name: "GENERAL_CFG")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg? generalCfg;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTags.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer {


	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayer.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsAvatarLayerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg {
	@JSONField(name: "config_type")
	int? configType;
	@JSONField(name: "general_config")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig? generalConfig;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfg.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig {
	@JSONField(name: "web_css_style")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle? webCssStyle;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfig.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle {
	String? borderRadius;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyle.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersLayerConfigTagsGeneralCfgGeneralConfigWebCssStyleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource {
	@JSONField(name: "res_image")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage? resImage;
	@JSONField(name: "res_type")
	int? resType;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResource.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage {
	@JSONField(name: "image_src")
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc? imageSrc;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImage.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc {
	int? placeholder;
	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote? remote;
	@JSONField(name: "src_type")
	int? srcType;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrc.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote {
	@JSONField(name: "bfs_style")
	String? bfsStyle;
	String? url;

	DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemote.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorAvatarFallbackLayersLayersResourceResImageImageSrcRemoteToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify {
	String? desc;
	int? type;

	DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerify.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerifyFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorOfficialVerifyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorPendant {
	int? expire;
	String? image;
	@JSONField(name: "image_enhance")
	String? imageEnhance;
	@JSONField(name: "image_enhance_frame")
	String? imageEnhanceFrame;
	String? name;
	int? pid;

	DongtaiResponseDataItemsOrigModulesModuleAuthorPendant();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorPendant.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorPendantFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorPendantToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorVip {
	@JSONField(name: "avatar_subscript")
	int? avatarSubscript;
	@JSONField(name: "avatar_subscript_url")
	String? avatarSubscriptUrl;
	@JSONField(name: "due_date")
	int? dueDate;
	DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel? label;
	@JSONField(name: "nickname_color")
	String? nicknameColor;
	int? status;
	@JSONField(name: "theme_type")
	int? themeType;
	int? type;

	DongtaiResponseDataItemsOrigModulesModuleAuthorVip();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorVip.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorVipFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorVipToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel {
	@JSONField(name: "bg_color")
	String? bgColor;
	@JSONField(name: "bg_style")
	int? bgStyle;
	@JSONField(name: "border_color")
	String? borderColor;
	@JSONField(name: "img_label_uri_hans")
	String? imgLabelUriHans;
	@JSONField(name: "img_label_uri_hans_static")
	String? imgLabelUriHansStatic;
	@JSONField(name: "img_label_uri_hant")
	String? imgLabelUriHant;
	@JSONField(name: "img_label_uri_hant_static")
	String? imgLabelUriHantStatic;
	@JSONField(name: "label_theme")
	String? labelTheme;
	String? path;
	String? text;
	@JSONField(name: "text_color")
	String? textColor;
	@JSONField(name: "use_img_label")
	bool? useImgLabel;

	DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel();

	factory DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabel.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabelFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleAuthorVipLabelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleDynamic {
	dynamic additional;
	dynamic desc;
	DongtaiResponseDataItemsOrigModulesModuleDynamicMajor? major;
	dynamic topic;

	DongtaiResponseDataItemsOrigModulesModuleDynamic();

	factory DongtaiResponseDataItemsOrigModulesModuleDynamic.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleDynamicFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleDynamicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleDynamicMajor {
	DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive? archive;
	String? type;

	DongtaiResponseDataItemsOrigModulesModuleDynamicMajor();

	factory DongtaiResponseDataItemsOrigModulesModuleDynamicMajor.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive {
	String? aid;
	DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge? badge;
	String? bvid;
	String? cover;
	String? desc;
	@JSONField(name: "disable_preview")
	int? disablePreview;
	@JSONField(name: "duration_text")
	String? durationText;
	@JSONField(name: "jump_url")
	String? jumpUrl;
	DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat? stat;
	String? title;
	int? type;

	DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive();

	factory DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchive.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge {
	@JSONField(name: "bg_color")
	String? bgColor;
	String? color;
	@JSONField(name: "icon_url")
	dynamic iconUrl;
	String? text;

	DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge();

	factory DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadge.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadgeFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveBadgeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat {
	String? danmaku;
	String? play;

	DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat();

	factory DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStat.fromJson(Map<String, dynamic> json) => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStatFromJson(json);

	Map<String, dynamic> toJson() => $DongtaiResponseDataItemsOrigModulesModuleDynamicMajorArchiveStatToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}