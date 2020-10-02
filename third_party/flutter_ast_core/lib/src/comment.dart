import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class DartComment implements _$DartComment {
  const DartComment._();

  const factory DartComment({
    @Default([]) List<String> lines,
  }) = _DartComment;

  factory DartComment.fromJson(Map<String, dynamic> json) =>
      _$DartCommentFromJson(json);

  String toCode() {
    final sb = StringBuffer();
    for (final line in lines) {
      sb.writeln('/// $line');
    }
    return sb.toString();
  }
}
