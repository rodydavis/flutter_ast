import 'analyzer.dart';
import 'index.dart';

class DartProperty {
  DartProperty();

  factory DartProperty.fromNode(
    DefaultFormalParameterImpl root,
    DartClass parent,
  ) {
    final base = DartProperty();
    bool _hasValue = false;
    for (final node in root.childEntities) {
      if (node is SimpleFormalParameterImpl) {
        _processMeta(base, node);
        for (final child in node.childEntities) {
          if (child is DeclaredSimpleIdentifier) {
            base.name = child.toString();
          }
          if (child is TypeNameImpl) {
            base.type = child.toString();
          }
        }
      }
      if (node is FieldFormalParameterImpl) {
        _processMeta(base, node);
        for (final child in node.childEntities) {
          if (child is SimpleIdentifierImpl) {
            base.name = child.toString();
          }
        }
        for (final field in parent.fields) {
          if (field.name == base.name) {
            base.type = field.type;
          }
        }
      }
      if (node.runtimeType.toString() == 'SimpleToken' &&
          node.toString() == '=') {
        _hasValue = true;
        continue;
      }
      if (_hasValue && node is LiteralImpl) {
        base.value = processLiteralValue(node)?.value;
      }
    }
    return base;
  }

  static DartCore processLiteralValue(LiteralImpl value) {
    if (value is BooleanLiteralImpl) {
      return DartCore('bool', value.value.toString());
    }
    if (value is IntegerLiteralImpl) {
      return DartCore('int', value.value.toString());
    }
    if (value is DoubleLiteralImpl) {
      return DartCore('double', value.value.toString());
    }
    if (value is StringLiteralImpl) {
      return DartCore('String', value.stringValue.toString());
    }
    if (value is SetOrMapLiteralImpl) {
      return DartCore('Map', value.toString());
    }
    if (value is ListLiteralImpl) {
      return DartCore('List', value.toString());
    }
    return DartCore(null, value.toString());
  }

  static void _processMeta(DartProperty base, FormalParameter node) {
    base.isConst = node.isConst;
    base.isFinal = node.isFinal;
    base.isNamed = node.isNamed;
    base.isOptional = node.isOptional;
    base.isPositional = node.isPositional;
    base.isRequired = node.isRequired;
    base.isRequiredPositional = node.isRequiredPositional;
    base.isSynthetic = node.isSynthetic;
    base.isRequiredNamed = node.isRequiredNamed;
    base.isOptionalNamed = node.isOptionalNamed;
  }

  bool isConst,
      isFinal,
      isNamed,
      isOptional,
      isPositional,
      isRequired,
      isRequiredPositional,
      isSynthetic,
      isRequiredNamed,
      isOptionalNamed;
  String name, type, value;

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'name': name,
      'type': type,
      "isConst": isConst,
      "isFinal": isFinal,
      "isNamed": isNamed,
      "isOptional": isOptional,
      "isPositional": isPositional,
      "isRequired": isRequired,
      "isRequiredPositional": isRequiredPositional,
      "isSynthetic": isSynthetic,
      "isRequiredNamed": isRequiredNamed,
      "isOptionalNamed": isOptionalNamed,
    };
  }
}

class DartCore {
  String type;
  String value;

  DartCore(this.type, this.value);

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
    };
  }
}
