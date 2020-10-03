import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

extension AstNodeUtils on AstNode {
  DartFile toDartFile([String path]) {
    DartFile base = DartFile(path: path);

    final List<String> imports = [];
    for (final node in root.childEntities.whereType<ImportDirectiveImpl>()) {
      final ImportDirectiveImpl _node = node;
      final _url = _node.uri.stringValue;
      imports.add(_url);
    }
    base = base.copyWith(imports: imports);

    final List<DartField> fields = [];
    for (final node
        in root.childEntities.whereType<TopLevelVariableDeclarationImpl>()) {
      fields.add(node.toDartField());
    }
    base = base.copyWith(fields: fields);

    final List<DartMethod> methods = [];
    for (final node
        in root.childEntities.whereType<FunctionDeclarationImpl>()) {
      methods.add(node.toDartMethod());
    }
    base = base.copyWith(methods: methods);

    final List<DartClass> classes = [];
    for (final node in root.childEntities.whereType<ClassDeclarationImpl>()) {
      final ClassDeclarationImpl _node = node;
      classes.add(_node.toDartClass(base));
    }
    base = base.copyWith(classes: classes);

    final List<DartEnum> enums = [];
    for (final node in root.childEntities.whereType<EnumDeclarationImpl>()) {
      final EnumDeclarationImpl _node = node;
      enums.add(_node.toDartEnum());
    }
    base = base.copyWith(enums: enums);

    return base;
  }
}

extension DartFileUtils on DartFile {
  String toDart() {
    final sb = StringBuffer();
    // TODO: Write back out to Dart
    return sb.toString();
  }
}
