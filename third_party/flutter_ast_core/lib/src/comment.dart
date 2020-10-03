import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class DartComment with _$DartComment {
  const factory DartComment({
    @Default([]) List<String> lines,
  }) = _DartComment;

  factory DartComment.fromJson(Map<String, dynamic> json) =>
      _$DartCommentFromJson(json);
}

extension DartCommentUtils on DartComment {
  String get comment => this?.lines == null ? '' : this.lines.join('\n');
}
