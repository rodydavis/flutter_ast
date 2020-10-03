import 'package:freezed_annotation/freezed_annotation.dart';

import 'core.dart';

part 'method.freezed.dart';
part 'method.g.dart';

@freezed
abstract class DartMethod implements _$DartMethod {
  const DartMethod._();

  const factory DartMethod({
    @required String name,
    @Default([]) List<DartProperty> parameters,
    @required MethodNode body,
  }) = _DartMethod;

  factory DartMethod.fromJson(Map<String, dynamic> json) =>
      _$DartMethodFromJson(json);
}

@freezed
abstract class MethodNode implements _$MethodNode {
  const MethodNode._();

  const factory MethodNode({
    @required String name,
  }) = _MethodNode;

  const factory MethodNode.values({
    @required String name,
    List<MethodNode> values,
  }) = MethodValues;

  const factory MethodNode.binary({
    @required String name,
    @required MethodNode left,
    @required MethodNode right,
    @required String operation,
  }) = MethodBinary;

  const factory MethodNode.constructor({
    @required String name,
    @required String value,
    @Default({}) Map<String, MethodNode> arguments,
  }) = MethodConstructor;

  const factory MethodNode.simple({
    @required String name,
    @required dynamic value,
  }) = MethodSimple;

  factory MethodNode.fromJson(Map<String, dynamic> json) =>
      _$MethodNodeFromJson(json);
}
