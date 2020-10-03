import 'package:freezed_annotation/freezed_annotation.dart';

part 'core.freezed.dart';
part 'core.g.dart';

@freezed
abstract class DartCore with _$DartCore {
  const factory DartCore({
    @required String type,
    @required String value,
  }) = _DartCore;

  const factory DartCore.property({
    @required String name,
    String key,
    @required String type,
    DartCore value,
    @Default(true) bool isOptional,
    @Default(false) bool isNamed,
    @Default(false) bool isPositional,
    @Default(false) bool isRequired,
    @Default(false) bool isRequiredPositional,
    @Default(false) bool isSynthetic,
    @Default(false) bool isRequiredNamed,
    @Default(false) bool isOptionalNamed,
    int position,
  }) = DartProperty;

  const factory DartCore.field({
    @required String name,
    @required String type,
    DartCore value,
    @Default(false) bool isFinal,
    @Default(false) bool isConst,
    @Default(false) bool isStatic,
  }) = DartField;

  factory DartCore.fromJson(Map<String, dynamic> json) =>
      _$DartCoreFromJson(json);
}

extension FieldUtils on DartField {
  String toCode() {
    final sb = StringBuffer();
    if (isStatic) {
      sb.write('static ');
    }
    if (isFinal) {
      sb.write('final ');
    }
    if (isConst) {
      sb.write('const ');
    }
    if (this.type != null) {
      sb.write('${this.type} ');
    } else {
      if (!isConst) {
        sb.write('var ');
      }
    }
    sb.write(' ${this.name}');
    if (value != null) {
      sb.write(' = ${this.value}');
    }
    sb.write(';');
    return sb.toString();
  }
}
