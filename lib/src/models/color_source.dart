import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_source.freezed.dart';
part 'color_source.g.dart';

@freezed
class ColorSource with _$ColorSource {
  const factory ColorSource({
    required int id,
    required String name,
    required int year,
    required String color,
    @JsonKey(name: 'pantone_value') required String pantoneValue,
  }) = _ColorSource;

  factory ColorSource.fromJson(Map<String, dynamic> json) =>
      _$ColorSourceFromJson(json);
}
