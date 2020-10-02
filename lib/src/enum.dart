import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

extension EnumDeclarationImplUtils on EnumDeclarationImpl {
  DartEnum toDartEnum() {
    final _name = this.name.toString();
    final _values = this.constants.map((e) => e.name.toString()).toList();
    return DartEnum(
      name: _name,
      values: _values,
    );
  }
}
