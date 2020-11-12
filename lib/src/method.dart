import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'analyzer.dart';
import 'core.dart';

extension MethodDeclarationImplUtils on MethodDeclarationImpl {
  DartMethod toDartMethod(DartClass parent) {
    return DartMethod(
      name: this.name.toString(),
      body: _check(this),
    );
  }
}

extension FunctionBodyImplUtils on FunctionBodyImpl {
  DartMethod toDartMethod(DartClass parent) {
    return DartMethod(
      name: null,
      body: _check(this),
    );
  }
}

extension FunctionDeclarationImplUtils on FunctionDeclarationImpl {
  DartMethod toDartMethod() {
    return DartMethod(
      name: this.name.toString(),
      body: _check(this),
    );
  }
}

MethodNode _check(SyntacticEntity node) {
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
    return MethodNode.simple(
      name: 'name',
      value: node.name,
    );
  }
  if (node is LiteralImpl) {
    return MethodNode.simple(
      name: 'value',
      value: node.toDartCore(),
    );
  }
  if (node is TypeNameImpl) {
    return MethodNode.simple(
      name: 'type',
      value: node.toString(),
    );
  }
  return null;
}

MethodNode _processFunctionDeclaration(FunctionDeclarationImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'function_declaration',
    values: values,
  );
}

MethodNode _processMethodDeclarationImpl(MethodDeclarationImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'method_declaration',
    values: values,
  );
}

MethodNode _processIfStatement(IfStatementImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'if',
    values: values,
  );
}

MethodNode _processFunction(FunctionExpressionImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'function',
    values: values,
  );
}

MethodNode _processDeclaration(DeclaredSimpleIdentifier node) {
  final List<MethodNode> values = [];
  // Check name meta getter/setter
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'declaration',
    values: values,
  );
}

MethodNode _processMethod(MethodInvocationImpl node) {
  final Map<String, MethodNode> arguments = {};
  final args = node.argumentList;
  for (var i = 0; i < args.arguments.length; i++) {
    final arg = args.arguments[i];
    if (arg is LiteralImpl) {
      arguments['$i'] = MethodNode.simple(
        name: 'value',
        value: arg.toDartCore(),
      );
    }
    if (arg is NamedExpressionImpl) {
      arguments[arg.name.label.toString()] = _check(arg.expression);
    }
  }
  return MethodNode.constructor(
    name: 'constructor',
    value: node.methodName.name,
    arguments: arguments,
  );
}

MethodNode _processBinary(BinaryExpressionImpl node) {
  final _children = node.childEntities.toList();
  return MethodNode.binary(
    name: 'binary',
    left: _check(_children[0]),
    right: _check(_children[2]),
    operation: _children[1].toString(),
  );
}

MethodNode _processConditional(ConditionalExpressionImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'conditional',
    values: values,
  );
}

MethodNode _processReturn(ReturnStatementImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'return',
    values: values,
  );
}

MethodNode _processBlock(BlockImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'block',
    values: values,
  );
}

MethodNode _processBlockBody(BlockFunctionBodyImpl node) {
  final List<MethodNode> values = [];
  for (final child in node.childEntities) {
    _checkAndAdd(child, values);
  }
  return MethodNode.values(
    name: 'block_body',
    values: values,
  );
}

void _checkAndAdd(SyntacticEntity child, List<MethodNode> values) {
  final _value = _check(child);
  if (_value != null && _value.name != null) {
    values.add(_value);
  }
}
