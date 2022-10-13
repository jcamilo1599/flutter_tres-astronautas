import 'package:json_annotation/json_annotation.dart';

import 'giphy_images.dart';

part 'giphy_data_api_resp.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiphyDataApiRespModel {
  GiphyDataApiRespModel({
    this.type,
    this.id,
    this.url,
    this.slug,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.title,
    this.rating,
    this.contentUrl,
    this.sourceTld,
    this.sourcePostUrl,
    this.isSticker,
    this.importDatetime,
    this.trendingDatetime,
    this.images,
    this.user,
  });

  final String? type;
  final String? id;
  final String? url;
  final String? slug;
  final String? bitlyGifUrl;
  final String? bitlyUrl;
  final String? embedUrl;
  final String? username;
  final String? source;
  final String? title;
  final String? rating;
  final String? contentUrl;
  final String? sourceTld;
  final String? sourcePostUrl;
  final int? isSticker;
  final DateTime? importDatetime;
  final String? trendingDatetime;
  final GiphyImagesModel? images;
  final dynamic user;

  factory GiphyDataApiRespModel.fromJson(Map<String, dynamic> json) =>
      _$GiphyDataApiRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiphyDataApiRespModelToJson(this);
}
