import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:build_cli_annotations/build_cli_annotations.dart';
import "package:console/console.dart";
import 'package:flutter_gen/flutter_gen.dart';

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
  final _path = options.path;
  final output = Directory(options.output);
  final inputDir = Directory(_path);
  final inputFile = File(_path);
  if (inputFile.existsSync()) {
    _processFile(output, inputFile, _path);
  }
  if (inputDir.existsSync()) {
    for (final file in inputDir.listSync(recursive: true)) {
      _processFile(output, file, _path);
    }
  }
}

void _processFile(Directory output, File input, String _path) {
  final source = input.readAsStringSync();
  final result = parseSource(source, _path);
  final _file = _getFile(
    output.path,
    p.basenameWithoutExtension(_path) + '.json',
  );
  _file.writeAsStringSync(result.toString());
}

File _getFile(String output, String filename) {
  final metaData = File('$output/$filename');
  if (!metaData.existsSync()) metaData.createSync(recursive: true);
  return metaData;
}
