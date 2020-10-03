import 'dart:io';
import 'package:path/path.dart' as p;
import 'dart:convert';

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

  final template = _getTemplate('base');
  var progress = ProgressBar(complete: _paths.length);
  var i = 0;
  final _cache = <String, DartResult>{};
  for (final path in _paths) {
    _processFile(output, File(path), template, _cache);
    progress.update(++i);
  }
  final _types = <String>{};
  for (final key in _cache.keys) {
    final _result = _cache[key];
    for (final field in _result.file.fields) {
      _types.add(field.type);
    }
    for (final item in _result.file.classes) {
      for (final sub in item?.constructors) {
        for (final prop in sub?.properties) {
          _types.add(prop.type);
        }
      }
    }
  }
  for (var type in _types) {
    type ??= 'null';
    if (type.startsWith('_')) continue;
    _writeTemplate('object', output.path, 'types/${type.toLowerCase()}.dart', {
      'type': type,
      'name': ReCase(type).pascalCase,
    });
  }
  _writeTemplate('core', output.path, 'core.dart', {});
  writeIndex(_paths, output);
}

void _writeTemplate(String name, String output, String path,
    [Map<String, dynamic> tokens = null]) {
  final template = _getTemplate(name);
  final _file = _getFile(output, path);
  final _output = template.renderString(tokens ?? const {});
  _file.writeAsStringSync(_output);
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

void writeIndex(List<String> _paths, Directory output) {
  final _result = <String, dynamic>{};
  _result['files'] = [];
  for (final pth in _paths) {
    _result['files'].add("$pth");
  }
  final _file = _getFile(output.path, 'meta.json');
  _file.writeAsStringSync(json.encode(_result));
}

void _processDirectory(
    Directory dir, Directory input, Directory output, List<String> paths) {
  for (final file in dir.listSync()) {
    if (file is Directory) {
      _processDirectory(file, input, output, paths);
    } else {
      paths.add(p.relative(file.path));
    }
  }
}

void _processFile(Directory output, File input, Template template,
    Map<String, DartResult> cache) {
  final source = input.readAsStringSync();
  final result = parseSource(source, input.path);
  cache[input.path] = result;
  final _base = result.file;
  final _template = <String, dynamic>{};
  _template['imports'] = [];
  _template['classes'] = [];
  if (_base?.classes != null && _base.classes.isNotEmpty) {
    for (final item in _base.classes) {
      _processClass(item, input, _template);
    }
    final _basePath = p.basenameWithoutExtension(input.path);
    final _path = 'classes/' + _basePath + '.dart';
    final _file = _getFile(output.path, _path);
    final _output = template.renderString(_template);
    _file.writeAsStringSync(_output);
  }
}

void _processClass(
  DartClass item,
  File input,
  Map<String, dynamic> _template,
) {
  if (!item.name.startsWith('_') &&
      !input.path.contains('.g.dart') &&
      !item.isAbstract) {
    _template['imports'] = [
      {'path': "import '../core.dart';"},
    ];
    _template['classes'] = {
      'class': item.name,
      'constructors': [],
      'fields': [],
      'static': [],
      'comments': item.comments?.map((e) => e.comment)?.toList(),
    };
    final _fields = <String, String>{};
    final _static = <String, String>{};
    for (final field in item.fields) {
      if (field.type == 'Key') continue;
      if (field.name.startsWith('_')) continue;
      if (!field.isFinal) continue;
      _fields[field.name] = field.type;
    }
    for (final field in item.fields) {
      if (field.isFinal) continue;
      _static[field.name] = field.type;
    }
    if (item?.constructors != null) {
      if (_template['classes']['fields'].isEmpty) {
        for (final sub in item.constructors) {
          for (final field in sub.properties) {
            if (field.type == 'Key') continue;
            if (field.name.startsWith('_')) continue;
            _fields[field.name] = field.type;
          }
        }
      }
      for (final sub in item.constructors) {
        if (sub.name.startsWith('_')) continue;
        final _baseConst = <String, dynamic>{
          'name': sub.name == item.name ? 'default' : sub.name,
          'className':
              sub.name == item.name ? item.name : '${item.name}.${sub.name}',
          'props': [],
        };
        for (final field in sub.properties) {
          if (field.name.startsWith('_')) continue;
          if (field.type == 'Key') continue;
          _baseConst['props'].add({
            'name': field.name,
            'type': field.type,
            'key': field.name,
            'separator': ':'
          });
        }
        _template['classes']['constructors'].add(_baseConst);
      }
    } else {
      _template['classes']['constructors'].add({
        'name': 'default',
        'props': [],
      });
    }
    _template['classes']['fields'] = [];
    for (final key in _fields.keys) {
      if ((_fields[key]?.startsWith('ui.') ?? false) &&
          !_template['imports'].contains('ui.')) {
        _template['imports'].add({'path': "import 'dart:ui' as ui;"});
      }
      _template['classes']['fields'].add({
        'name': key,
        'type': _fields[key],
        'core': 'Core<${_fields[key]}>',
      });
    }
    for (final key in _static.keys) {
      _template['classes']['static'].add({
        'name': key,
        'type': _fields[key],
        'core': 'Core<${_fields[key]}>',
        'value': '${_fields[key]}',
      });
    }
  }
}

File _getFile(String output, String filename) {
  final metaData = File('$output/$filename');
  if (!metaData.existsSync()) metaData.createSync(recursive: true);
  return metaData;
}
