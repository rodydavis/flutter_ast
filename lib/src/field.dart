import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'index.dart';

extension FieldDeclarationImplUtils on FieldDeclarationImpl {
  DartField toDartField() {
    DartField _base;
    for (final node in this.root.childEntities) {
      if (node is VariableDeclarationListImpl) {
        _base = _process(node);
      }
    }
    return _base;
  }
}

extension TopLevelVariableDeclarationImplUtils
    on TopLevelVariableDeclarationImpl {
  DartField toDartField() {
    DartField _base;
    for (final node in this.root.childEntities) {
      if (node is VariableDeclarationListImpl) {
        _base = _process(node);
      }
    }
    return _base;
  }
}

extension DefaultFormalParameterImplUtils on DefaultFormalParameterImpl {
  DartProperty toDartProperty(List<DartField> fields) {
    DartProperty base;
    bool _hasValue = false;
    for (final node in this.root.childEntities) {
      if (node is SimpleFormalParameterImpl) {
        base = _processProperty(node);
        for (final child in node.childEntities) {
          if (child is DeclaredSimpleIdentifier) {
            base = base.copyWith(name: child.toString());
          }
          if (child is TypeNameImpl) {
            base = base.copyWith(type: child.toString());
          }
        }
      }
      if (node is FieldFormalParameterImpl) {
        base = _processProperty(node);
        for (final child in node.childEntities) {
          if (child is SimpleIdentifierImpl) {
            base = base.copyWith(name: child.toString());
          }
        }
        if (fields != null)
          for (final field in fields) {
            if (field.name == base.name) {
              base = base.copyWith(type: field.type);
            }
          }
      }
      if (node.runtimeType.toString() == 'SimpleToken' &&
          node.toString() == '=') {
        _hasValue = true;
        continue;
      }
      if (_hasValue && node is LiteralImpl) {
        base = base.copyWith(value: node.toDartCore());
      }
    }
    return base;
  }
}

DartField _processField(FormalParameter node) {
  return DartField(
    name: null,
    type: null,
    isConst: node.isConst,
    isFinal: node.isFinal,
  );
}

DartProperty _processProperty(FormalParameter node) {
  return DartProperty(
    name: null,
    type: null,
    isNamed: node.isNamed,
    isOptional: node.isOptional,
    isPositional: node.isPositional,
    isRequired: node.isRequired,
    isRequiredPositional: node.isRequiredPositional,
    isSynthetic: node.isSynthetic,
    isRequiredNamed: node.isRequiredNamed,
    isOptionalNamed: node.isOptionalNamed,
  );
}

DartField _process(VariableDeclarationListImpl node) {
  String _type, _name;
  for (final child in node.childEntities) {
    if (child is TypeNameImpl) {
      final TypeNameImpl _node = child;
      _type = _node.toString();
    }
    if (child is VariableDeclarationImpl) {
      _name = child.name.toString();
    }
  }
  return DartField(
    type: _type,
    name: _name,
  );
}
