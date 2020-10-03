import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

class FlutterClass extends DartClass {
  FlutterClass();

  factory FlutterClass.fromNode(ClassDeclarationImpl root, DartFile parent) {
    final base = FlutterClass();
    final dartClass = DartClass.fromNode(root, parent);
    base.name = dartClass.name;
    base.fields.addAll(dartClass.fields);
    base.constructors.addAll(dartClass.constructors);
    base.comments.addAll(dartClass.comments);
    base.methods.addAll(dartClass.methods);
    bool _hasBuildMethod = false;
    for (final node in root.childEntities.whereType<MethodDeclarationImpl>()) {
      final _name = node.toDartMethod(base);
      if (_name.name == 'build') {
        _hasBuildMethod = true;
      }
      if (_hasBuildMethod) {
        for (final sub in node.childEntities) {
          if (sub is FunctionBodyImpl) {
            base.tree = sub.toDartMethod(base);
          }
        }
      }
    }
    return base;
  }

  DartMethod tree;

  @override
  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "comments": this.comments,
      "fields": this.fields,
      "constructors": this.constructors,
      "methods": this.methods,
      'tree': tree,
    };
  }
}
