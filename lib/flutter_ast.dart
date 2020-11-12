import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/error/error.dart';
import 'package:flutter_ast_core/flutter_ast_core.dart';

import 'src/index.dart';
export 'src/index.dart';

DartResult parseSource(String source, [String path]) {
  assert(source != null && source.isNotEmpty);
  final result = parseString(
    content: source,
    path: path,
    throwIfDiagnostics: false,
  );
  final root = result.unit.root;
  final file = root.toDartFile();
  final output = DartResult(file);
  if (result.errors.isNotEmpty) {
    output.errors.addAll(result.errors);
  }
  return output;
}

class DartResult {
  DartResult(this.file);
  final DartFile file;
  final List<AnalysisError> errors = [];

  Map<String, dynamic> toJson() {
    return {
      'file': file,
      'errors': [
        for (final error in errors) error,
      ],
    };
  }

  @override
  String toString() => toJson().prettyPrint();
}

extension AnalysisErrorUtils on AnalysisError {
  Map<String, dynamic> toJson() {
    return {
      'message': this.message,
    };
  }
}

void printMembers(CompilationUnit unit) {
  for (CompilationUnitMember unitMember in unit.declarations) {
    if (unitMember is ClassDeclaration) {
      print(unitMember.name.name);
      for (ClassMember classMember in unitMember.members) {
        if (classMember is MethodDeclaration) {
          print('  ${classMember.name}');
        } else if (classMember is FieldDeclaration) {
          for (VariableDeclaration field in classMember.fields.variables) {
            print('  ${field.name.name}');
          }
        } else if (classMember is ConstructorDeclaration) {
          if (classMember.name == null) {
            print('  ${unitMember.name.name}');
          } else {
            print('  ${unitMember.name.name}.${classMember.name.name}');
          }
        }
      }
    }
  }
}