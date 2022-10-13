import 'package:json_annotation/json_annotation.dart';

part 'giphy_image_original.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GiphyImageOriginalModel {
  GiphyImageOriginalModel({
    this.height,
    this.mp4,
    this.mp4Size,
    this.size,
    this.url,
    this.webp,
    this.webpSize,
    this.width,
    this.frames,
    this.hash,
  });

  final String? height;
  final String? mp4;
  final String? mp4Size;
  final String? size;
  final String? url;
  final String? webp;
  final String? webpSize;
  final String? width;
  final String? frames;
  final String? hash;

  factory GiphyImageOriginalModel.fromJson(Map<String, dynamic> json) =>
      _$GiphyImageOriginalModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiphyImageOriginalModelToJson(this);
}
