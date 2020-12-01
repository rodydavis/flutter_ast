import 'dart:convert';
import 'dart:io';
import 'package:flutter_ast/src/generator/parser.dart';
import 'package:flutter_ast_core/flutter_ast_core.dart';
import 'package:path/path.dart' as p;

import 'package:build_cli_annotations/build_cli_annotations.dart';
import "package:console/console.dart";
import 'package:flutter_ast/flutter_ast.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:recase/recase.dart';

part 'generator.g.dart';

@CliOptions()
class Options {
  @CliOption(
    abbr: 'p',
    help: 'Required. The path to the Directory of widgets or Single File',
  )
  final String path;

  @CliOption(
    abbr: 'o',
    help: 'The path to the Directory output.',
    defaultsTo: 'build',
  )
  final String output;

  @CliOption(
    negatable: false,
    help: 'Prints usage information.',
  )
  bool help;

  Options(this.path, this.output);
}

const kBasePath =
    '/Users/rodydavis/Developer/GitHub/protoypes/widget_studio/third_party/flutter_dynamic_widget/third_party/flutter_ast';

final cache = Cache();
// dart ./bin/flutter_gen.dart -p /Users/rodydavis/Developer/GitHub/protoypes/widget_studio/third_party/flutter/packages/flutter/lib/src/material
void main(List<String> args) {
  Console.init();
  final options = parseOptions(args);
  final output = Directory(options.output);
  final inputDir = Directory(options.path);
  final inputFile = File(options.path);
  final _paths = <String>[];
  if (inputDir.existsSync()) {
    _processDirectory(inputDir, inputDir, output, _paths);
  } else if (inputFile.existsSync()) {
    _paths.add(inputFile.path);
  } else {
    throw Exception('Not a valid path!');
  }

  final template = _getTemplate('widget');
  var progress = ProgressBar(complete: _paths.length);
  var i = 0;
  final parser = GenParser();
  for (final path in _paths) {
    _processFile(output, File(path), template, parser);
    progress.update(++i);
  }
  _getFile(output.path, 'base.dart').writeAsStringSync(_base);
  final files = Directory(p.join(output.path, 'classes')).listSync();
  final imports = files
      .map((item) => "export 'classes/${p.basename(item.path)}';")
      .toList();
  imports.sort();
  _getFile(output.path, 'index.dart').writeAsStringSync(imports.join('\n'));
  final sb = StringBuffer();
  sb.writeln("import 'index.dart';");
  sb.writeln("import 'base.dart';");
  sb.writeln();
  sb.writeln("Map<String, BaseWidget> widgetLibrary = {");
  final List<String> _names = [];
  for (final file in files) {
    final _result = cache.getCache(p.basename(file.path));
    if (_result == null) continue;
    for (final item in _result.file.classes) {
      if (item.isValid) _names.add(item.name);
    }
  }
  _names.sort();
  for (final name in _names) {
    sb.writeln("  '${name}': ${name}Base.readOnly(),");
  }
  sb.writeln('};');
  _getFile(output.path, 'library.dart').writeAsStringSync(sb.toString());
  // writeIndex(_paths, output);
  print(parser.toString());
}

Template _getTemplate(String name) {
  final _typePath = File('$kBasePath/templates/$name.dart.mustache');
  final _template = Template(
    _typePath.readAsStringSync(),
    name: _typePath.path,
    lenient: true,
    htmlEscapeValues: false,
  );
  return _template;
}

void _processDirectory(
  Directory dir,
  Directory input,
  Directory output,
  List<String> paths,
) {
  for (final file in dir.listSync(recursive: true)) {
    if (file is Directory) {
      _processDirectory(file, input, output, paths);
    } else {
      paths.add(p.relative(file.path));
    }
  }
}

void _processFile(
    Directory output, File input, Template template, GenParser parser) {
  final source = input.readAsStringSync();
  parser.merge(source);
  final result = parseSource(source, input.path);
  cache.setCache(p.basename(input.path), result);
  final _base = result.file;
  if (_base?.classes != null && _base.classes.isNotEmpty) {
    for (final item in _base.classes) {
      if (item.isValid) {
        if (!cache.addName(item.name)) continue;
        final _template = _processClass(item, input);
        if (_template == null) continue;
        final name = ReCase(item.name).snakeCase;
        final _path = 'classes/' + name + '.dart';
        final _file = _getFile(output.path, _path);
        final _output = template.renderString(_template);
        if (_output.trim().isEmpty) {
          _file.deleteSync();
          return;
        }
        _file.writeAsStringSync(_output);
      }
    }
  }
}

Map<String, dynamic> _processClass(
  DartClass item,
  File input,
) {
  if (!item.name.startsWith('_') &&
      !input.path.contains('.g.dart') &&
      !item.isAbstract) {
    final _comments = item.comments?.map((e) => e.comment)?.toList() ?? [];
    final _root = <String, dynamic>{
      "imports": [
        {'path': "import '../base.dart';"},
      ],
      'class': item.name,
      'constructors': [],
      'fields': [],
      'static': [],
      'comments': _comments,
      'description': _comments.join('/n'),
    };
    for (final sub in item.constructors) {
      final isDefault = item.name == sub.name;
      final _name = isDefault ? '${item.name}' : '${item.name}.${sub.name}';
      if (_name.startsWith('_') || _name.contains('._')) continue;
      _root['constructors'].add(buildConstructor(_name, sub));
    }
    for (final field in item.fields) {
      if (field is DartField) {
        _root['fields'].add({
          'key': field?.name ?? '',
          'type': field?.type ?? 'dynamic',
          'value': field?.value?.value ?? 'null',
        });
      }
    }
    _root['constructor_divider'] =
        List.from(_root['fields']).isEmpty ? '' : ':';
    if (List.from(_root['constructors']).isNotEmpty) return _root;
  }
  return null;
}

Map<String, dynamic> buildConstructor(String name, DartConstructor item) {
  return {
    'name': name,
    'widget': '$name()',
    'json': jsonEncode({
      'name': '$name',
      'params': {},
    }),
  };
}

class Cache {
  final _files = <String, DartResult>{};
  final _names = <String>{};

  void setCache(String path, DartResult result) => _files[path] = result;
  DartResult getCache(String path) => _files[path];

  bool addName(String name) => _names.add(name);
  List<String> get name => _names.toList();
}

extension on DartClass {
  String get extendedClasses {
    final _extends = (this?.extendsClause ?? '').replaceAll('extends ', '');
    if (_extends.isEmpty) return '';
    return _extends;
  }

  bool get isValid {
    if (this.name.startsWith('_')) return false;
    if (this.isAbstract) return false;
    if (extendedClasses.isEmpty) return false;
    if ([
      'StatelessWidget',
      'StatefulWidget',
      'MaterialButton',
      'InheritedWidget',
      'InheritedTheme',
      'InlineSpan',
      'RenderObjectWidget',
      'BoxScrollView',
      'ScrollView',
      'SingleChildRenderObjectWidget',
    ].contains(extendedClasses)) {
      return true;
    }
    return false;
  }
}

File _getFile(String output, String filename) {
  final metaData = File('$output/$filename');
  if (!metaData.existsSync()) metaData.createSync(recursive: true);
  return metaData;
}

String get _base => '''
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'package:flutter/cupertino.dart' hide RefreshCallback;

abstract class BaseWidget extends ValueNotifier<Map<String, dynamic>> implements Base {
    BaseWidget() : super({});
    Map<String, Object> flavors(BuildContext context);
    List<String> get constructors;
    Map<String, String> get properties;
    String get constructor;
    Object render(BuildContext context) => flavors(context)[constructor];
    bool isWidget(BuildContext context) => render(context) is Widget; 
    dynamic getProperty(String key);
    setProperty(String key, dynamic value);
}

abstract class Base {
    Map<String, dynamic> toJson();
    String get description;
}
''';
