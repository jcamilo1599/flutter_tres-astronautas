import 'package:json_annotation/json_annotation.dart';

import 'giphy_data_api_resp.dart';
import 'giphy_meta_api_resp.dart';

part 'giphy_api_resp.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiphyApiRespModel {
  GiphyApiRespModel({
    this.data,
    this.meta,
    this.pagination,
  });

  final List<GiphyDataApiRespModel>? data;
  final GiphyMetaApiRespModel? meta;
  final dynamic pagination;

  factory GiphyApiRespModel.fromJson(Map<String, dynamic> json) =>
      _$GiphyApiRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiphyApiRespModelToJson(this);
}
