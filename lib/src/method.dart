import 'analyzer.dart';
import 'index.dart';

class DartMethod {
  DartMethod();

  String name;
  final List<DartProperty> parameters = [];
  TreeValue body = NodeValue();

  factory DartMethod.fromNode(MethodDeclarationImpl root, DartClass parent) {
    final base = DartMethod();
    base.name = root.name.toString();
    base.body = _check(root);
    return base;
  }

  factory DartMethod.fromBlock(FunctionBodyImpl root, DartClass parent) {
    final base = DartMethod();
    base.name = null;
    base.body = _check(root);
    return base;
  }

  factory DartMethod.fromTopLevelNode(FunctionDeclarationImpl root) {
    final base = DartMethod();
    base.name = root.name.toString();
    base.body = _check(root);
    return base;
  }

  static TreeValue _check(SyntacticEntity node) {
    if (node is FunctionDeclarationImpl) {
      return _processFunctionDeclaration(node);
    }
    if (node is MethodDeclarationImpl) {
      return _processMethodDeclarationImpl(node);
    }
    if (node is FunctionExpressionImpl) {
      return _processFunction(node);
    }
    if (node is DeclaredSimpleIdentifier) {
      return _processDeclaration(node);
    }
    if (node is MethodInvocationImpl) {
      return _processMethod(node);
    }
    if (node is ReturnStatementImpl) {
      return _processReturn(node);
    }
    if (node is IfStatementImpl) {
      return _processIfStatement(node);
    }
    if (node is ConditionalExpressionImpl) {
      return _processConditional(node);
    }
    if (node is BlockFunctionBodyImpl) {
      return _processBlockBody(node);
    }
    if (node is BlockImpl) {
      return _processBlock(node);
    }
    if (node is BinaryExpressionImpl) {
      return _processBinary(node);
    }
    if (node is SimpleIdentifierImpl) {
      return Simple.value('name', node.name);
    }
    if (node is LiteralImpl) {
      return Simple.value('value', DartProperty.processLiteralValue(node));
    }
    if (node is TypeNameImpl) {
      return Simple.value('type', node.toString());
    }
    return null;
  }

  static TreeValue _processFunctionDeclaration(FunctionDeclarationImpl node) {
    final parent = NodeValue();
    parent.name = 'function_declaration';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processMethodDeclarationImpl(MethodDeclarationImpl node) {
    final parent = NodeValue();
    parent.name = 'method_declaration';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processIfStatement(IfStatementImpl node) {
    final parent = NodeValue();
    parent.name = 'if';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processFunction(FunctionExpressionImpl node) {
    final parent = NodeValue();
    parent.name = 'function';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processDeclaration(DeclaredSimpleIdentifier node) {
    final parent = NodeValue();
    parent.name = 'declaration';
    // Check name meta getter/setter
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processMethod(MethodInvocationImpl node) {
    final parent = ConstructorValue();
    parent.name = 'constructor';
    parent.value = node.methodName.name;
    final args = node.argumentList;
    for (var i = 0; i < args.arguments.length; i++) {
      final arg = args.arguments[i];
      if (arg is LiteralImpl) {
        parent.arguments['$i'] = Simple.value(
          'value',
          DartProperty.processLiteralValue(arg),
        );
      }
      if (arg is NamedExpressionImpl) {
        parent.arguments[arg.name.label.toString()] = _check(arg.expression);
      }
    }
    return parent;
  }

  static TreeValue _processBinary(BinaryExpressionImpl node) {
    final output = BinaryValue();
    output.name = 'binary';
    final _children = node.childEntities.toList();
    output.leftSide = _check(_children[0]);
    output.operation = _children[1].toString();
    output.rightSide = _check(_children[2]);
    return output;
  }

  static TreeValue _processConditional(ConditionalExpressionImpl node) {
    final parent = NodeValue();
    parent.name = 'conditional';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processReturn(ReturnStatementImpl node) {
    final parent = NodeValue();
    parent.name = 'return';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processBlock(BlockImpl node) {
    final parent = NodeValue();
    parent.name = 'block';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static TreeValue _processBlockBody(BlockFunctionBodyImpl node) {
    final parent = NodeValue();
    parent.name = 'block_body';
    for (final child in node.childEntities) {
      _checkAndAdd(child, parent);
    }
    return parent;
  }

  static void _checkAndAdd(SyntacticEntity child, NodeValue parent) {
    final _value = _check(child);
    if (parent.name != null && _value != null && _value.name != null) {
      parent.values.add(_value);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'body': body,
      'parameters': parameters,
    };
  }
}

abstract class TreeValue {
  String name;
  dynamic toJson();
}

class NodeValue extends TreeValue {
  String name;
  final List<TreeValue> values = [];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'values': values,
    };
  }
}

class BinaryValue extends TreeValue {
  String name;
  TreeValue leftSide, rightSide;
  String operation;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'left': leftSide,
      'right': rightSide,
      'operation': operation,
    };
  }
}

class ConstructorValue extends TreeValue {
  String name, value;
  final Map<String, TreeValue> arguments = {};

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
      'arguments': arguments,
    };
  }
}

class Simple extends TreeValue {
  String name;
  dynamic value;

  Simple.value(this.name, this.value);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'props': {
        '0': value,
      }
    };
  }
}

