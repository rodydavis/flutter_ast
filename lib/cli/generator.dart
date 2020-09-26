import 'dart:io';
import 'package:path/path.dart' as p;
import 'dart:convert';

import 'package:build_cli_annotations/build_cli_annotations.dart';
import "package:console/console.dart";
import 'package:flutter_ast/flutter_ast.dart';
import 'package:mustache_template/mustache_template.dart';

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
  final _templateFile = File(
      '/Users/rodydavis/Developer/GitHub/protoypes/widget_studio/third_party/flutter_dynamic_widget/third_party/flutter_ast/templates/base.dart.mustache');
  final template = Template(
    _templateFile.readAsStringSync(),
    name: _templateFile.path,
    lenient: true,
    htmlEscapeValues: false,
  );
  for (final path in _paths) {
    _processFile(output, File(path), template);
  }
  writeIndex(_paths, output);
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

void _processFile(Directory output, File input, Template template) {
  final source = input.readAsStringSync();
  final result = parseSource(source, input.path);
  final _base = result.file;
  if (_base != null && _base.classes.isNotEmpty) {
    final _class = _base.classes.first;
    if (!_class.name.startsWith('_')) {
      final _basePath =
          p.basenameWithoutExtension(input.path).replaceAll('.g', '');
      final _path = _basePath + '.g.dart';
      final _file = _getFile(output.path, _path);
      final _output = template.renderString({
        'class': _class.name,
        'props': _class?.constructors == null || _class.constructors.isEmpty
            ? null
            : _class.constructors.first?.properties
                ?.map((e) => {
                      'name': e.name,
                      'type': e.type,
                      'value': e.value,
                    })
                ?.toList(),
      });
      _file.writeAsStringSync(_output);
    }
  }
}

File _getFile(String output, String filename) {
  final metaData = File('$output/$filename');
  if (!metaData.existsSync()) metaData.createSync(recursive: true);
  return metaData;
}
