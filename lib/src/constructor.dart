import 'analyzer.dart';
import 'index.dart';

class DartConstructor {
  DartConstructor();

  factory DartConstructor.fromNode(
    ConstructorDeclarationImpl root,
    DartClass parent,
  ) {
    final base = DartConstructor();
    base.name = root.toString();

    for (final node in root.childEntities) {
      if (node is SimpleIdentifierImpl) {
        base.name = node.name;
      }
      if (node is DeclaredSimpleIdentifier) {
        base.name = node.name;
      }
      if (node is FormalParameterListImpl) {
        for (final child in node.childEntities) {
          if (child is DefaultFormalParameterImpl) {
            base.properties.add(DartProperty.fromNode(child, parent));
          }
        }
      }
    }
    return base;
  }

  String name;
  List<DartProperty> properties = [];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'properties': properties,
    };
  }
}
