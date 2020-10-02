// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartEnum _$_$_DartEnumFromJson(Map<String, dynamic> json) {
  return _$_DartEnum(
    name: json['name'] as String,
    values: (json['values'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_DartEnumToJson(_$_DartEnum instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };
