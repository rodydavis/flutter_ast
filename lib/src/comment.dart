import 'analyzer.dart';
import 'index.dart';

class DartComment {
  DartComment();

  factory DartComment.fromNode(CommentImpl root) {
    final base = DartComment();
    for (final child in root.childEntities) {
      base.comment = child.toString().replaceFirst('/// ', '');
    }
    return base;
  }

  String comment;

  dynamic toJson() {
    return comment;
  }
}
