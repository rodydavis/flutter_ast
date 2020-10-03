// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartClass _$_$_DartClassFromJson(Map<String, dynamic> json) {
  return _$_DartClass(
    constructors: (json['constructors'] as List)
            ?.map((e) => e == null
                ? null
                : DartConstructor.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    comments: (json['comments'] as List)
            ?.map((e) => e == null
                ? null
                : DartComment.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    fields: (json['fields'] as List)
            ?.map((e) => e == null
                ? null
                : DartField.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    methods: (json['methods'] as List)
            ?.map((e) => e == null
                ? null
                : DartMethod.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    name: json['name'] as String,
    isAbstract: json['isAbstract'] as bool,
    extendsClause: json['extendsClause'] as String,
    implementsClause: json['implementsClause'] as String,
    withClause: json['withClause'] as String,
  );
}

Map<String, dynamic> _$_$_DartClassToJson(_$_DartClass instance) =>
    <String, dynamic>{
      'constructors': instance.constructors,
      'comments': instance.comments,
      'fields': instance.fields,
      'methods': instance.methods,
      'name': instance.name,
      'isAbstract': instance.isAbstract,
      'extendsClause': instance.extendsClause,
      'implementsClause': instance.implementsClause,
      'withClause': instance.withClause,
    };
