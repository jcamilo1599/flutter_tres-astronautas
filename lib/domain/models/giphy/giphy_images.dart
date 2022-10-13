import 'package:json_annotation/json_annotation.dart';

import 'giphy_image_detail.dart';

part 'giphy_images.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiphyImagesModel {
  GiphyImagesModel({
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
  final GiphyImageDetailModel? images;
  final dynamic user;

  factory GiphyImagesModel.fromJson(Map<String, dynamic> json) =>
      _$GiphyImagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiphyImagesModelToJson(this);
}
