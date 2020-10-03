// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartFile _$_$_DartFileFromJson(Map<String, dynamic> json) {
  return _$_DartFile(
    path: json['path'] as String,
    classes: (json['classes'] as List)
            ?.map((e) => e == null
                ? null
                : DartClass.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    enums: (json['enums'] as List)
            ?.map((e) =>
                e == null ? null : DartEnum.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    fields: (json['fields'] as List)
            ?.map((e) => e == null
                ? null
                : DartField.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    imports: (json['imports'] as List)?.map((e) => e as String)?.toList() ?? [],
    methods: (json['methods'] as List)
            ?.map((e) => e == null
                ? null
                : DartMethod.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_DartFileToJson(_$_DartFile instance) =>
    <String, dynamic>{
      'path': instance.path,
      'classes': instance.classes,
      'enums': instance.enums,
      'fields': instance.fields,
      'imports': instance.imports,
      'methods': instance.methods,
    };
