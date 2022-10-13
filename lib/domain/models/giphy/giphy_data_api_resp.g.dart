// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_data_api_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiphyDataApiRespModel _$GiphyDataApiRespModelFromJson(
        Map<String, dynamic> json) =>
    GiphyDataApiRespModel(
      type: json['type'] as String?,
      id: json['id'] as String?,
      url: json['url'] as String?,
      slug: json['slug'] as String?,
      bitlyGifUrl: json['bitly_gif_url'] as String?,
      bitlyUrl: json['bitly_url'] as String?,
      embedUrl: json['embed_url'] as String?,
      username: json['username'] as String?,
      source: json['source'] as String?,
      title: json['title'] as String?,
      rating: json['rating'] as String?,
      contentUrl: json['content_url'] as String?,
      sourceTld: json['source_tld'] as String?,
      sourcePostUrl: json['source_post_url'] as String?,
      isSticker: json['is_sticker'] as int?,
      importDatetime: json['import_datetime'] == null
          ? null
          : DateTime.parse(json['import_datetime'] as String),
      trendingDatetime: json['trending_datetime'] as String?,
      images: json['images'] == null
          ? null
          : GiphyImagesModel.fromJson(json['images'] as Map<String, dynamic>),
      user: json['user'],
    );

Map<String, dynamic> _$GiphyDataApiRespModelToJson(
        GiphyDataApiRespModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'bitly_gif_url': instance.bitlyGifUrl,
      'bitly_url': instance.bitlyUrl,
      'embed_url': instance.embedUrl,
      'username': instance.username,
      'source': instance.source,
      'title': instance.title,
      'rating': instance.rating,
      'content_url': instance.contentUrl,
      'source_tld': instance.sourceTld,
      'source_post_url': instance.sourcePostUrl,
      'is_sticker': instance.isSticker,
      'import_datetime': instance.importDatetime?.toIso8601String(),
      'trending_datetime': instance.trendingDatetime,
      'images': instance.images,
      'user': instance.user,
    };
