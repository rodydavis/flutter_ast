// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartMethod _$_$_DartMethodFromJson(Map<String, dynamic> json) {
  return _$_DartMethod(
    name: json['name'] as String,
    parameters: (json['parameters'] as List)
            ?.map((e) => e == null
                ? null
                : DartProperty.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    body: json['body'] == null
        ? null
        : MethodNode.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DartMethodToJson(_$_DartMethod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parameters': instance.parameters,
      'body': instance.body,
    };

_$MethodBase _$_$MethodBaseFromJson(Map<String, dynamic> json) {
  return _$MethodBase(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$MethodBaseToJson(_$MethodBase instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$MethodValues _$_$MethodValuesFromJson(Map<String, dynamic> json) {
  return _$MethodValues(
    name: json['name'] as String,
    values: (json['values'] as List)
        ?.map((e) =>
            e == null ? null : MethodNode.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$MethodValuesToJson(_$MethodValues instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };

_$MethodBinary _$_$MethodBinaryFromJson(Map<String, dynamic> json) {
  return _$MethodBinary(
    name: json['name'] as String,
    left: json['left'] == null
        ? null
        : MethodNode.fromJson(json['left'] as Map<String, dynamic>),
    right: json['right'] == null
        ? null
        : MethodNode.fromJson(json['right'] as Map<String, dynamic>),
    operation: json['operation'] as String,
  );
}

Map<String, dynamic> _$_$MethodBinaryToJson(_$MethodBinary instance) =>
    <String, dynamic>{
      'name': instance.name,
      'left': instance.left,
      'right': instance.right,
      'operation': instance.operation,
    };

_$MethodConstructor _$_$MethodConstructorFromJson(Map<String, dynamic> json) {
  return _$MethodConstructor(
    name: json['name'] as String,
    value: json['value'] as String,
    arguments: (json['arguments'] as Map<String, dynamic>)?.map(
          (k, e) => MapEntry(
              k,
              e == null
                  ? null
                  : MethodNode.fromJson(e as Map<String, dynamic>)),
        ) ??
        {},
  );
}

Map<String, dynamic> _$_$MethodConstructorToJson(
        _$MethodConstructor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'arguments': instance.arguments,
    };

_$MethodSimple _$_$MethodSimpleFromJson(Map<String, dynamic> json) {
  return _$MethodSimple(
    name: json['name'] as String,
    value: json['value'],
  );
}

Map<String, dynamic> _$_$MethodSimpleToJson(_$MethodSimple instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
