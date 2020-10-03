import 'package:freezed_annotation/freezed_annotation.dart';

import 'class.dart';
import 'core.dart';
import 'enum.dart';
import 'method.dart';

part 'file.freezed.dart';
part 'file.g.dart';

@freezed
abstract class DartFile with _$DartFile {
  const factory DartFile({
    String path,
    @Default([]) List<DartClass> classes,
    @Default([]) List<DartEnum> enums,
    @Default([]) List<DartField> fields,
    @Default([]) List<String> imports,
    @Default([]) List<DartMethod> methods,
  }) = _DartFile;

  factory DartFile.fromJson(Map<String, dynamic> json) =>
      _$DartFileFromJson(json);
}
