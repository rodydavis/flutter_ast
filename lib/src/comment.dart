import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

extension DartCommentUtils on CommentImpl {
  DartComment toDartComment() {
    final _lines = <String>[];
    for (final child in this.childEntities) {
      final _desc = child.toString();
      if (_desc.contains('///')) {
        final line = _desc.replaceFirst('/// ', '').replaceFirst('///', '');
        _lines.add(line);
      }
    }
    return DartComment(lines: _lines);
  }
}
