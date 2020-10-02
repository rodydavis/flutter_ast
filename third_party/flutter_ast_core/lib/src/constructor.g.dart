// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constructor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartConstructor _$_$_DartConstructorFromJson(Map<String, dynamic> json) {
  return _$_DartConstructor(
    name: json['name'] as String,
    properties: (json['properties'] as List)
            ?.map((e) => e == null
                ? null
                : DartProperty.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_DartConstructorToJson(_$_DartConstructor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'properties': instance.properties,
    };
