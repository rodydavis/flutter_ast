import 'analyzer.dart';
import 'comment.dart';
import 'index.dart';

class DartClass {
  DartClass();

  factory DartClass.fromNode(ClassDeclarationImpl root, DartFile parent) {
    final base = DartClass();
    base.name = root.name.toString();
    base.isAbstract = root?.isAbstract ?? false;
    for (final item in root.childEntities.whereType<FieldDeclarationImpl>()) {
      base.fields.add(DartField.fromNode(item, base));
    }
    for (final item
        in root.childEntities.whereType<ConstructorDeclarationImpl>()) {
      base.constructors.add(DartConstructor.fromNode(item, base));
    }
    for (final item in root.childEntities.whereType<MethodDeclarationImpl>()) {
      base.methods.add(DartMethod.fromNode(item, base));
    }
    for (final item in root.childEntities.whereType<CommentImpl>()) {
      base.comments.add(DartComment.fromNode(item));
    }
    return base;
  }

  final List<DartConstructor> constructors = [];
  final List<DartField> fields = [];
  final List<DartMethod> methods = [];
  String name;
  bool isAbstract = false;
  final List<DartComment> comments = [];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'comments': comments,
      'isAbstract': isAbstract,
      'fields': fields,
      'constructors': constructors,
      'methods': methods,
    };
  }
}
