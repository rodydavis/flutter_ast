import 'analyzer.dart';
import 'index.dart';

class DartField {
  DartField();

  factory DartField.fromNode(FieldDeclarationImpl root, DartClass parent) {
    final base = DartField();
    for (final node in root.childEntities) {
      if (node is VariableDeclarationListImpl) {
        _process(node, base);
      }
    }
    return base;
  }

  factory DartField.fromTopLevelNode(TopLevelVariableDeclarationImpl root) {
    final base = DartField();
    for (final node in root.childEntities) {
      if (node is VariableDeclarationListImpl) {
        _process(node, base);
      }
    }
    return base;
  }

  String name;
  String type;

  static void _process(VariableDeclarationListImpl node, DartField base) {
    for (final child in node.childEntities) {
      if (child is TypeNameImpl) {
        final TypeNameImpl _node = child;
        base.type = _node.toString();
      }
      if (child is VariableDeclarationImpl) {
        base.name = child.name.toString();
      }
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
    };
  }
}
