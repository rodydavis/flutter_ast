import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'comment.dart';
import 'index.dart';

class DartClass {
  DartClass();

  factory DartClass.fromNode(ClassDeclarationImpl root, DartFile parent) {
    final base = DartClass();
    base.name = root.name.toString();
    for (final item in root.childEntities.whereType<FieldDeclarationImpl>()) {
      base.fields.add(item.toDartField());
    }
    for (final item
        in root.childEntities.whereType<ConstructorDeclarationImpl>()) {
      base.constructors.add(item.toDartConstructor(base));
    }
    for (final item in root.childEntities.whereType<MethodDeclarationImpl>()) {
      base.methods.add(item.toDartMethod(base));
    }
    for (final item in root.childEntities.whereType<CommentImpl>()) {
      base.comments.add(item.toDartComment());
    }
    return base;
  }

  final List<DartConstructor> constructors = [];
  final List<DartField> fields = [];
  final List<DartMethod> methods = [];
  String name;
  final List<DartComment> comments = [];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'comments': comments,
      'fields': fields,
      'constructors': constructors,
      'methods': methods,
    };
  }
}
