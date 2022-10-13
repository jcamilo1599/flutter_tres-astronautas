// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_meta_api_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiphyMetaApiRespModel _$GiphyMetaApiRespModelFromJson(
        Map<String, dynamic> json) =>
    GiphyMetaApiRespModel(
      msg: json['msg'] as String?,
      status: json['status'] as int?,
      responseId: json['response_id'] as String?,
    );

Map<String, dynamic> _$GiphyMetaApiRespModelToJson(
        GiphyMetaApiRespModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'status': instance.status,
      'response_id': instance.responseId,
    };
