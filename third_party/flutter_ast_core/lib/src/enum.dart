import 'package:freezed_annotation/freezed_annotation.dart';

part 'enum.freezed.dart';
part 'enum.g.dart';

@freezed
abstract class DartEnum implements _$DartEnum {
  const DartEnum._();

  const factory DartEnum({
    @required String name,
    @required List<String> values,
  }) = _DartEnum;

  factory DartEnum.fromJson(Map<String, dynamic> json) =>
      _$DartEnumFromJson(json);

  String toCode() {
    final sb = StringBuffer();
    sb.writeln('${this.name} {');
    for (final item in this.values) {
      sb.writeln('${item},');
    }
    sb.writeln('}');
    return sb.toString();
  }
}
