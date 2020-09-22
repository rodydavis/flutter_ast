// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generator.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

Options _$parseOptionsResult(ArgResults result) =>
    Options(result['path'] as String, result['output'] as String)
      ..help = result['help'] as bool;

ArgParser _$populateOptionsParser(ArgParser parser) => parser
  ..addOption('path',
      abbr: 'p', help: 'Required. The path to the Directory of widgets.')
  ..addOption('output',
      abbr: 'o', help: 'The path to the Directory output.', defaultsTo: 'build')
  ..addFlag('help', help: 'Prints usage information.', negatable: false);

final _$parserForOptions = _$populateOptionsParser(ArgParser());

Options parseOptions(List<String> args) {
  final result = _$parserForOptions.parse(args);
  return _$parseOptionsResult(result);
}
