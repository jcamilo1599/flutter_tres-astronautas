// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_api_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiphyApiRespModel _$GiphyApiRespModelFromJson(Map<String, dynamic> json) =>
    GiphyApiRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GiphyImagesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : GiphyMetaApiRespModel.fromJson(
              json['meta'] as Map<String, dynamic>),
      pagination: json['pagination'],
    );

Map<String, dynamic> _$GiphyApiRespModelToJson(GiphyApiRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'pagination': instance.pagination,
    };
