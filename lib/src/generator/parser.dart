import 'package:flutter_ast_core/flutter_ast_core.dart';

import '../../flutter_ast.dart';

class GenParser {
  GenParser();

  List<DartClass> get classes => _classes.values.toList(growable: false);
  final Map<String, DartClass> _classes = {};
  DartClass getClass(String key) =>
      _classes.containsKey(key) ? _classes[key] : null;

  List<DartEnum> get enums => _enums.toList(growable: false);
  final Set<DartEnum> _enums = {};

  List<DartField> get fields => _fields.toList(growable: false);
  final Set<DartField> _fields = {};

  List<DartMethod> get methods => _methods.toList(growable: false);
  final Set<DartMethod> _methods = {};

  List<String> get imports => _imports.toList(growable: false);
  final Set<String> _imports = {};

  factory GenParser.fromString(String source) {
    final base = GenParser();
    base.merge(source);
    return base;
  }

  factory GenParser.fromListString(List<String> sources) {
    final base = GenParser();
    for (final source in sources) {
      base.merge(source);
    }
    return base;
  }

  void merge(String source) {
    final DartResult result = parseSource(source);
    if (result?.file != null) {
      if (result?.file?.classes != null) {
        for (final item in result.file.classes) {
          this._classes.putIfAbsent(item.name, () => item);
        }
      }
      if (result?.file?.enums != null) {
        this._enums.addAll(result.file.enums);
      }
      if (result?.file?.fields != null) {
        this._fields.addAll(result.file.fields);
      }
      if (result?.file?.methods != null) {
        this._methods.addAll(result.file.methods);
      }
      if (result?.file?.imports != null) {
        this._imports.addAll(result.file.imports);
      }
    }
  }

  @override
  String toString() {
    final sb = StringBuffer();
    sb.writeln('-- RESULTS --');
    sb.writeln('Classes: ${this.classes.length}');
    sb.writeln('Enums:   ${this.enums.length}');
    sb.writeln('Imports: ${this.imports.length}');
    sb.writeln('Methods: ${this.methods.length}');
    return sb.toString();
  }
}
