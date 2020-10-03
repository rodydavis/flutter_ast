import 'package:freezed_annotation/freezed_annotation.dart';

part 'enum.freezed.dart';
part 'enum.g.dart';

@freezed
abstract class DartEnum with _$DartEnum {
  const factory DartEnum({
    @required String name,
    @required List<String> values,
  }) = _DartEnum;

  factory DartEnum.fromJson(Map<String, dynamic> json) =>
      _$DartEnumFromJson(json);
}
