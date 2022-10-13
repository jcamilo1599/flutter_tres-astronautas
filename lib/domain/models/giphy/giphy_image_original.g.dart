// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_image_original.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiphyImageOriginalModel _$GiphyImageOriginalModelFromJson(
        Map<String, dynamic> json) =>
    GiphyImageOriginalModel(
      height: json['height'] as String?,
      mp4: json['mp4'] as String?,
      mp4Size: json['mp4_size'] as String?,
      size: json['size'] as String?,
      url: json['url'] as String?,
      webp: json['webp'] as String?,
      webpSize: json['webp_size'] as String?,
      width: json['width'] as String?,
      frames: json['frames'] as String?,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$GiphyImageOriginalModelToJson(
        GiphyImageOriginalModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'mp4': instance.mp4,
      'mp4_size': instance.mp4Size,
      'size': instance.size,
      'url': instance.url,
      'webp': instance.webp,
      'webp_size': instance.webpSize,
      'width': instance.width,
      'frames': instance.frames,
      'hash': instance.hash,
    };
