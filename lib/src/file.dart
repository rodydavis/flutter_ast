import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

class DartFile {
  DartFile();

  factory DartFile.fromNode(AstNode root) {
    final base = DartFile();
    for (final node in root.childEntities.whereType<ImportDirectiveImpl>()) {
      final ImportDirectiveImpl _node = node;
      final _url = _node.uri.stringValue;
      base.imports.add(_url);
    }
    for (final node
        in root.childEntities.whereType<TopLevelVariableDeclarationImpl>()) {
      base.fields.add(node.toDartField());
    }
    for (final node
        in root.childEntities.whereType<FunctionDeclarationImpl>()) {
      base.methods.add(node.toDartMethod());
    }
    for (final node in root.childEntities.whereType<ClassDeclarationImpl>()) {
      final ClassDeclarationImpl _node = node;
      base.classes.add(_node.toDartClass(base));
    }
    for (final node in root.childEntities.whereType<EnumDeclarationImpl>()) {
      final EnumDeclarationImpl _node = node;
      base.enums.add(_node.toDartEnum());
    }
    return base;
  }

  final List<DartClass> classes = [];
  final List<DartEnum> enums = [];
  final List<DartField> fields = [];
  final List<String> imports = [];
  final List<DartMethod> methods = [];

  Map<String, dynamic> toJson() {
    return {
      'name': null,
      'imports': imports,
      'classes': classes,
      'enums': enums,
      'fields': fields,
      'methods': methods,
    };
  }

  @override
  String toString() => toJson().prettyPrint();
}
