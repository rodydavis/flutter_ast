import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';
import 'constructor.dart';
import 'core.dart';
import 'method.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
abstract class DartClass with _$DartClass {
  const factory DartClass({
    @Default([]) List<DartConstructor> constructors,
    @Default([]) List<DartComment> comments,
    @Default([]) List<DartField> fields,
    @Default([]) List<DartMethod> methods,
    @required String name,
    bool isAbstract,
    String extendsClause,
    String implementsClause,
    String withClause,
  }) = _DartClass;

  factory DartClass.fromJson(Map<String, dynamic> json) =>
      _$DartClassFromJson(json);
}
