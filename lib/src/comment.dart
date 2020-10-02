import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

extension DartCommentUtils on CommentImpl {
  DartComment toDartComment() {
    final _lines = <String>[];
    for (final child in this.root.childEntities) {
      final _desc = child.toString();
      if (_desc.contains('///')) {
        _lines.add(_desc.replaceFirst('///', '').trim());
      }
    }
    return DartComment(lines: _lines);
  }
}
