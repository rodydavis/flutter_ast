import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';

extension LiteralImplUtils on LiteralImpl {
  DartCore toDartCore() {
    final value = this;
    if (value is BooleanLiteralImpl) {
      return DartCore(
        type: 'bool',
        value: value.value.toString(),
      );
    }
    if (value is IntegerLiteralImpl) {
      return DartCore(
        type: 'int',
        value: value.value.toString(),
      );
    }
    if (value is DoubleLiteralImpl) {
      return DartCore(
        type: 'double',
        value: value.value.toString(),
      );
    }
    if (value is StringLiteralImpl) {
      return DartCore(
        type: 'String',
        value: value.stringValue.toString(),
      );
    }
    if (value is SetOrMapLiteralImpl) {
      return DartCore(
        type: 'Map',
        value: value.toString(),
      );
    }
    if (value is ListLiteralImpl) {
      return DartCore(
        type: 'List',
        value: value.toString(),
      );
    }
    return DartCore(
      type: null,
      value: value.toString(),
    );
  }
}
