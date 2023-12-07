// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorSource _$ColorSourceFromJson(Map<String, dynamic> json) {
  return _ColorSource.fromJson(json);
}

/// @nodoc
mixin _$ColorSource {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'pantone_value')
  String get pantoneValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorSourceCopyWith<ColorSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorSourceCopyWith<$Res> {
  factory $ColorSourceCopyWith(
          ColorSource value, $Res Function(ColorSource) then) =
      _$ColorSourceCopyWithImpl<$Res, ColorSource>;
  @useResult
  $Res call(
      {int id,
      String name,
      int year,
      String color,
      @JsonKey(name: 'pantone_value') String pantoneValue});
}

/// @nodoc
class _$ColorSourceCopyWithImpl<$Res, $Val extends ColorSource>
    implements $ColorSourceCopyWith<$Res> {
  _$ColorSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
    Object? color = null,
    Object? pantoneValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      pantoneValue: null == pantoneValue
          ? _value.pantoneValue
          : pantoneValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorSourceImplCopyWith<$Res>
    implements $ColorSourceCopyWith<$Res> {
  factory _$$ColorSourceImplCopyWith(
          _$ColorSourceImpl value, $Res Function(_$ColorSourceImpl) then) =
      __$$ColorSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int year,
      String color,
      @JsonKey(name: 'pantone_value') String pantoneValue});
}

/// @nodoc
class __$$ColorSourceImplCopyWithImpl<$Res>
    extends _$ColorSourceCopyWithImpl<$Res, _$ColorSourceImpl>
    implements _$$ColorSourceImplCopyWith<$Res> {
  __$$ColorSourceImplCopyWithImpl(
      _$ColorSourceImpl _value, $Res Function(_$ColorSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
    Object? color = null,
    Object? pantoneValue = null,
  }) {
    return _then(_$ColorSourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      pantoneValue: null == pantoneValue
          ? _value.pantoneValue
          : pantoneValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorSourceImpl implements _ColorSource {
  const _$ColorSourceImpl(
      {required this.id,
      required this.name,
      required this.year,
      required this.color,
      @JsonKey(name: 'pantone_value') required this.pantoneValue});

  factory _$ColorSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorSourceImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int year;
  @override
  final String color;
  @override
  @JsonKey(name: 'pantone_value')
  final String pantoneValue;

  @override
  String toString() {
    return 'ColorSource(id: $id, name: $name, year: $year, color: $color, pantoneValue: $pantoneValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.pantoneValue, pantoneValue) ||
                other.pantoneValue == pantoneValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, year, color, pantoneValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorSourceImplCopyWith<_$ColorSourceImpl> get copyWith =>
      __$$ColorSourceImplCopyWithImpl<_$ColorSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorSourceImplToJson(
      this,
    );
  }
}

abstract class _ColorSource implements ColorSource {
  const factory _ColorSource(
          {required final int id,
          required final String name,
          required final int year,
          required final String color,
          @JsonKey(name: 'pantone_value') required final String pantoneValue}) =
      _$ColorSourceImpl;

  factory _ColorSource.fromJson(Map<String, dynamic> json) =
      _$ColorSourceImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get year;
  @override
  String get color;
  @override
  @JsonKey(name: 'pantone_value')
  String get pantoneValue;
  @override
  @JsonKey(ignore: true)
  _$$ColorSourceImplCopyWith<_$ColorSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
