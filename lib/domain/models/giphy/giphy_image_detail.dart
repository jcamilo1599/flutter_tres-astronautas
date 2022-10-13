import 'package:json_annotation/json_annotation.dart';

import 'giphy_image_original.dart';

part 'giphy_image_detail.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiphyImageDetailModel {
  GiphyImageDetailModel({
    this.original,
    this.hd,
    this.fixedWidthStill,
    this.fixedHeightDownsampled,
    this.previewGif,
    this.preview,
    this.fixedHeightSmall,
    this.downsized,
    this.fixedWidthDownsampled,
    this.fixedWidth,
    this.downsizedStill,
    this.downsizedMedium,
    this.originalMp4,
    this.downsizedLarge,
    this.previewWebp,
    this.originalStill,
    this.fixedHeightSmallStill,
    this.fixedWidthSmall,
    this.looping,
    this.downsizedSmall,
    this.fixedWidthSmallStill,
    this.fixedHeightStill,
    this.fixedHeight,
    this.the480WStill,
  });

  final GiphyImageOriginalModel? original;
  final dynamic hd;
  final dynamic fixedWidthStill;
  final dynamic fixedHeightDownsampled;
  final dynamic previewGif;
  final dynamic preview;
  final dynamic fixedHeightSmall;
  final dynamic downsized;
  final dynamic fixedWidthDownsampled;
  final dynamic fixedWidth;
  final dynamic downsizedStill;
  final dynamic downsizedMedium;
  final dynamic originalMp4;
  final dynamic downsizedLarge;
  final dynamic previewWebp;
  final dynamic originalStill;
  final dynamic fixedHeightSmallStill;
  final dynamic fixedWidthSmall;
  final dynamic looping;
  final dynamic downsizedSmall;
  final dynamic fixedWidthSmallStill;
  final dynamic fixedHeightStill;
  final dynamic fixedHeight;
  final dynamic the480WStill;

  factory GiphyImageDetailModel.fromJson(Map<String, dynamic> json) =>
      _$GiphyImageDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiphyImageDetailModelToJson(this);
}
