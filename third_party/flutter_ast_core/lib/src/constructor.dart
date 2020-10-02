import 'package:freezed_annotation/freezed_annotation.dart';

import 'core.dart';

part 'constructor.freezed.dart';
part 'constructor.g.dart';

@freezed
abstract class DartConstructor implements _$DartConstructor {
  const DartConstructor._();

  const factory DartConstructor({
    @required String name,
    @Default([]) List<DartProperty> properties,
  }) = _DartConstructor;

  factory DartConstructor.fromJson(Map<String, dynamic> json) =>
      _$DartConstructorFromJson(json);

  String toCode() {
    final sb = StringBuffer();
    sb.write('${name}(');
    if (properties.isNotEmpty) {
      sb.writeln('{');
      for (final prop in properties) {
        sb.writeln(prop.toCode());
      }
      sb.writeln('}');
    }
    sb.write(');');
    return sb.toString();
  }
}
