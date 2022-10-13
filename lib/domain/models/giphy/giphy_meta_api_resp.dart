import 'package:json_annotation/json_annotation.dart';

part 'giphy_meta_api_resp.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiphyMetaApiRespModel {
  GiphyMetaApiRespModel({
    this.msg,
    this.status,
    this.responseId,
  });

  final String? msg;
  final int? status;
  final String? responseId;

  factory GiphyMetaApiRespModel.fromJson(Map<String, dynamic> json) =>
      _$GiphyMetaApiRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiphyMetaApiRespModelToJson(this);
}
