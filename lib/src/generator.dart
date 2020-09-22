
// class LibraryGen {
//   final Directory output;
//   final File input;

//   LibraryGen(this.input, this.output);

//   String renderTemplate(String path, Map<String, dynamic> tokens) {
//     final template = new Template(
//       File(path).readAsStringSync(),
//       name: path,
//       lenient: true,
//       htmlEscapeValues: false,
//     );
//     return template.renderString(tokens);
//   }

//   void generate() {
//     final parts = input.path.split('/');
//     parts.removeLast();
//     final lib = <String, WidgetLibrary>{};
//     final Set<String> paths = {};
//     final lines = input.readAsLinesSync();
//     for (final line in lines) {
//       if (line.contains('export')) {
//         final _path = line.replaceAll("export '", '').replaceAll("';", '');
//         paths.add(_path);
//       }
//     }
//     var progress = ProgressBar(complete: paths.length);
//     var i = 0;
//     for (final file in paths) {
//       progress.update(++i);
//       try {
//         final _base = parts.join('/');
//         final contents = File('$_base/$file').readAsStringSync();
//         lib[file] = _processFile(contents);
//       } catch (e) {
//         print('error reading file: $e');
//       }
//     }
//     final widgets = [];
//     final enums = [];
//     for (var key in lib.keys) {
//       // -- Enums --
//       for (final item in lib[key].enums) {
//         final name = item.name.toString();
//         if (name.startsWith('_')) continue;
//         final _base = <String, dynamic>{
//           "type": name,
//           "values": [],
//         };
//         for (final constKey in item.constants) {
//           _base['values'].add({'name': constKey});
//         }
//         enums.add(_base);
//       }

//       // -- Classes --
//       for (final item in lib[key].classes) {
//         final name = item.name.toString();
//         if (!name.startsWith('_')) {
//           if (isValidWidget(item)) {
//             final _path = 'library/${name.toString().toLowerCase()}.dart';
//             final _base = <String, dynamic>{
//               "path": _path,
//               "name": item.name.toString(),
//               'properties': [],
//             };
//             Set<String> _comments = {};
//             if (item?.documentationComment != null) {
//               _comments.add(item.documentationComment.toString());
//             }

//             final ConstructorDeclaration _const = item.getConstructor(null);
//             if (_const != null) {
//               final fields = _const.parameters.parameters;
//               if (fields != null) {
//                 for (FormalParameter field in fields) {
//                   final _param = getType(field);
//                   final _name = field.identifier.toString();
//                   if (_name == 'key') continue;
//                   // Get comments
//                   String _type = _param?.name;
//                   if (_type == null || _type == 'null') _type = 'dynamic';
//                   _base['properties'].add({
//                     'isRequired': field.isRequired,
//                     'isFinal': field.isFinal,
//                     'isOptional': field.isOptional,
//                     'isPositional': field.isPositional,
//                     'isNamed': field.isNamed,
//                     'isConst': field.isConst,
//                     'isSynthetic': field.isSynthetic,
//                     'value': _param?.value,
//                     'type': _type,
//                     'name': _name,
//                   });
//                 }
//               }
//             }
//             widgets.add(_base);
//             final _widget = renderTemplate('templates/render.dart.mustache', {
//               "class": name,
//               "comments": _comments.toList(),
//               "properties": _base['properties'],
//             });
//             _getFile(_path).writeAsStringSync(_widget);
//           }
//         }
//       }
//     }

//     final enumWidget = renderTemplate('templates/enums.dart.mustache', {
//       "enums": enums,
//     });
//     _getFile('enums.dart').writeAsStringSync(enumWidget);

//     final dynamicWidget = renderTemplate('templates/dynamic.dart.mustache', {
//       "widgets": widgets,
//     });
//     _getFile('dynamic.dart').writeAsStringSync(dynamicWidget);

//     final index = renderTemplate('templates/index.dart.mustache', {
//       "widgets": widgets,
//     });
//     _getFile('index.dart').writeAsStringSync(index);
//   }

//   bool isValidWidget(ClassDeclaration item) {
//     final _extends = item.extendsClause?.toString();
//     if (!item.isAbstract &&
//         _extends != null &&
//         !item.name.toString().startsWith('_')) {
//       if (_extends.contains('StatelessWidget') ||
//           _extends.contains('StatefulWidget')) {
//         // print('${item.name} ${item.isAbstract} -> $_extends');
//         return true;
//       }
//     }
//     return false;
//   }

//   File _getFile(String filename) {
//     final metaData = File('${output.path}/$filename');
//     if (!metaData.existsSync()) metaData.createSync(recursive: true);
//     return metaData;
//   }

//   DartTypeImpl getType(FormalParameter field) {
//     SyntacticEntity val;
//     String type = null;
//     for (final child in field.childEntities) {
//       if (child is SimpleFormalParameterImpl) {
//         type = child.type.toString();
//       } else if (child is FieldFormalParameterImpl) {
//         type = child.type.toString();
//       } else {
//         val = child;
//         type ??= val.runtimeType.toString();
//       }
//     }
//     if (val == null) return DartTypeImpl(null, null);
//     dynamic value = null;
//     if (val is PrefixedIdentifierImpl) {
//       value = val.toString();
//       type = val.prefix.name;

//       /// [BooleanLiteral]
//       /// [DoubleLiteral]
//       /// [IntegerLiteral]
//       /// [ListLiteral]
//       /// [MapLiteral]
//       /// [NullLiteral]
//       /// [StringLiteral]
//     } else if (val is LiteralImpl) {
//       if (val is BooleanLiteralImpl) {
//         value = val?.value;
//         type = 'bool';
//       } else if (val is DoubleLiteralImpl) {
//         value = val?.value;
//         type = 'double';
//       } else if (val is IntegerLiteralImpl) {
//         value = val?.value;
//         type = 'int';
//       } else if (val is StringLiteralImpl) {
//         value = val?.stringValue;
//         type = 'String';
//       } else if (val is ListLiteralImpl) {
//         type = 'List';
//         value =
//             val?.elements?.map((CollectionElement e) => e.toJson())?.toList();
//       } else if (val is SetOrMapLiteralImpl) {
//         type = 'Map';
//         value =
//             val?.elements?.map((CollectionElement e) => e.toJson())?.toList();
//       }
//     }
//     type ??= 'dynamic';
//     value ??= val.toString();
//     // print('$type -> $value');
//     return DartTypeImpl(type, value);
//   }

//   WidgetLibrary _processFile(String src) {
//     final output = parseString(
//       content: src,
//       path: null,
//     );
//     final root = output.unit.root;
//     final base = WidgetLibrary();
//     for (final node in root.childEntities) {
//       if (node is ClassDeclaration) {
//         base.classes.add(node);
//       }
//       if (node is EnumDeclaration) {
//         base.enums.add(node);
//       }

//       // this is Block
//       // this is CompilationUnit
//       // this is Block
//       // - MethodDeclaration
//       // - FunctionDeclaration
//       // - ConstructorDeclaration
//       // this.runtimeType.toString() == 'ConstructorNameImpl'
//       // - IfStatement
//       // - WhileStatement
//       // - DoStatement
//       // - TryStatement
//       // - SwitchStatement
//     }
//     return base;
//   }
// }

// extension NodeUtils on SyntacticEntity {
//   String description() => json.encode(toJson());
//   Map<String, dynamic> toJson() {
//     return {
//       'type': '${this.runtimeType}',
//       'body': '$this',
//     };
//   }
// }

// extension MapUtils on Map {
//   Map<String, dynamic> sorted() {
//     final Map<String, dynamic> _input = json.decode(json.encode(this));
//     final keys = _input.keys.toList();
//     keys.sort();
//     final _output = <String, dynamic>{};
//     for (final key in keys) {
//       _output[key] = _input[key];
//     }
//     return _output;
//   }

//   void prettyPrint() {
//     JsonEncoder encoder = new JsonEncoder.withIndent('  ');
//     String prettyprint = encoder.convert(this);
//     print(prettyprint);
//   }
// }

// class WidgetLibrary {
//   final enums = <EnumDeclaration>{};
//   final classes = <ClassDeclaration>{};
// }

// class DartTypeImpl {
//   final String name;
//   final Object value;

//   DartTypeImpl(this.name, this.value);
// }
