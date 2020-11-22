import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

extension ConstructorDeclarationImplUtils on ConstructorDeclarationImpl {
  DartConstructor toDartConstructor(DartClass parent) {
    DartConstructor base;
    String _name = '';
    for (final node in this.childEntities) {
      if (node is SimpleIdentifierImpl) {
        _name = node.name;
      }
      if (node is DeclaredSimpleIdentifier) {
        _name = node.name;
      }
      base = DartConstructor(name: _name);
      if (node is FormalParameterListImpl) {
        for (final child in node.childEntities) {
          if (child is DefaultFormalParameterImpl) {
            final _props = List<DartProperty>.from(base.properties);
            _props.add(child.toDartProperty(parent.fields));
            base = base.copyWith(properties: _props);
          }
        }
      }
    }
    return base;
  }
}
