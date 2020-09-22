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
      base.fields.add(DartField.fromTopLevelNode(node));
    }
    for (final node
        in root.childEntities.whereType<FunctionDeclarationImpl>()) {
      base.methods.add(DartMethod.fromTopLevelNode(node));
    }
    for (final node in root.childEntities.whereType<ClassDeclarationImpl>()) {
      final ClassDeclarationImpl _node = node;
      bool isWidget = false;
      final _extends = _node.extendsClause.toString();
      if (_extends.contains('StatelessWidget') ||
          _extends.contains('StatefulWidget')) {
        isWidget = true;
      }
      if (isWidget) {
        base.classes.add(FlutterClass.fromNode(_node, base));
      } else {
        base.classes.add(DartClass.fromNode(_node, base));
      }
    }
    for (final node in root.childEntities.whereType<EnumDeclarationImpl>()) {
      final EnumDeclarationImpl _node = node;
      base.enums.add(DartEnum.fromNode(_node));
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
