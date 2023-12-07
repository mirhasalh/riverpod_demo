// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorSourceImpl _$$ColorSourceImplFromJson(Map<String, dynamic> json) =>
    _$ColorSourceImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      year: json['year'] as int,
      color: json['color'] as String,
      pantoneValue: json['pantone_value'] as String,
    );

Map<String, dynamic> _$$ColorSourceImplToJson(_$ColorSourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'color': instance.color,
      'pantone_value': instance.pantoneValue,
    };
