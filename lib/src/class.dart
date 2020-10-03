import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'comment.dart';
import 'index.dart';

extension ClauseDeclarationImplUtils on ClassDeclarationImpl {
  DartClass toDartClass(DartFile parent) {
    DartClass base = DartClass(name: this.name.toString());
    final List<DartField> fields = [];
    for (final item in this.childEntities.whereType<FieldDeclarationImpl>()) {
      fields.add(item.toDartField());
    }
    final List<DartConstructor> constructors = [];
    for (final item
        in this.childEntities.whereType<ConstructorDeclarationImpl>()) {
      constructors.add(item.toDartConstructor(base));
    }
    final List<DartMethod> methods = [];
    for (final item in this.childEntities.whereType<MethodDeclarationImpl>()) {
      methods.add(item.toDartMethod(base));
    }
    final List<DartComment> comments = [];
    for (final item in this.childEntities.whereType<CommentImpl>()) {
      comments.add(item.toDartComment());
    }
    return base.copyWith(
      isAbstract: this?.abstractKeyword != null,
      extendsClause: this?.extendsClause?.toString(),
      implementsClause: this?.implementsClause?.toString(),
      withClause: this?.withClause?.toString(),
      fields: fields,
      constructors: constructors,
      methods: methods,
      comments: comments,
    );
  }
}
