import 'dart:io';
import 'package:path/path.dart' as p;
import 'dart:convert';

import 'package:build_cli_annotations/build_cli_annotations.dart';
import "package:console/console.dart";
import 'package:flutter_ast/flutter_ast.dart';

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
  for (final path in _paths) {
    _processFile(output, File(path));
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

void _processFile(Directory output, File input) {
  final source = input.readAsStringSync();
  final result = parseSource(source, input.path);
  final _file = _getFile(
    output.path,
    p.basenameWithoutExtension(input.path) + '.json',
  );
  _file.writeAsStringSync(result.toString());
}

File _getFile(String output, String filename) {
  final metaData = File('$output/$filename');
  if (!metaData.existsSync()) metaData.createSync(recursive: true);
  return metaData;
}
