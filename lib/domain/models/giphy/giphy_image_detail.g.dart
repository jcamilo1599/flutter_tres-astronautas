// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_image_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiphyImageDetailModel _$GiphyImageDetailModelFromJson(
        Map<String, dynamic> json) =>
    GiphyImageDetailModel(
      original: json['original'] == null
          ? null
          : GiphyImageOriginalModel.fromJson(
              json['original'] as Map<String, dynamic>),
      hd: json['hd'],
      fixedWidthStill: json['fixed_width_still'],
      fixedHeightDownsampled: json['fixed_height_downsampled'],
      previewGif: json['preview_gif'],
      preview: json['preview'],
      fixedHeightSmall: json['fixed_height_small'],
      downsized: json['downsized'],
      fixedWidthDownsampled: json['fixed_width_downsampled'],
      fixedWidth: json['fixed_width'],
      downsizedStill: json['downsized_still'],
      downsizedMedium: json['downsized_medium'],
      originalMp4: json['original_mp4'],
      downsizedLarge: json['downsized_large'],
      previewWebp: json['preview_webp'],
      originalStill: json['original_still'],
      fixedHeightSmallStill: json['fixed_height_small_still'],
      fixedWidthSmall: json['fixed_width_small'],
      looping: json['looping'],
      downsizedSmall: json['downsized_small'],
      fixedWidthSmallStill: json['fixed_width_small_still'],
      fixedHeightStill: json['fixed_height_still'],
      fixedHeight: json['fixed_height'],
      the480WStill: json['the480_w_still'],
    );

Map<String, dynamic> _$GiphyImageDetailModelToJson(
        GiphyImageDetailModel instance) =>
    <String, dynamic>{
      'original': instance.original,
      'hd': instance.hd,
      'fixed_width_still': instance.fixedWidthStill,
      'fixed_height_downsampled': instance.fixedHeightDownsampled,
      'preview_gif': instance.previewGif,
      'preview': instance.preview,
      'fixed_height_small': instance.fixedHeightSmall,
      'downsized': instance.downsized,
      'fixed_width_downsampled': instance.fixedWidthDownsampled,
      'fixed_width': instance.fixedWidth,
      'downsized_still': instance.downsizedStill,
      'downsized_medium': instance.downsizedMedium,
      'original_mp4': instance.originalMp4,
      'downsized_large': instance.downsizedLarge,
      'preview_webp': instance.previewWebp,
      'original_still': instance.originalStill,
      'fixed_height_small_still': instance.fixedHeightSmallStill,
      'fixed_width_small': instance.fixedWidthSmall,
      'looping': instance.looping,
      'downsized_small': instance.downsizedSmall,
      'fixed_width_small_still': instance.fixedWidthSmallStill,
      'fixed_height_still': instance.fixedHeightStill,
      'fixed_height': instance.fixedHeight,
      'the480_w_still': instance.the480WStill,
    };
