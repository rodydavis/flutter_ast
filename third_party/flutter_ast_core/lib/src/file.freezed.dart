// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartFile _$DartFileFromJson(Map<String, dynamic> json) {
  return _DartFile.fromJson(json);
}

/// @nodoc
class _$DartFileTearOff {
  const _$DartFileTearOff();

// ignore: unused_element
  _DartFile call(
      {String path,
      List<DartClass> classes = const [],
      List<DartEnum> enums = const [],
      List<DartField> fields = const [],
      List<String> imports = const [],
      List<DartMethod> methods = const []}) {
    return _DartFile(
      path: path,
      classes: classes,
      enums: enums,
      fields: fields,
      imports: imports,
      methods: methods,
    );
  }

// ignore: unused_element
  DartFile fromJson(Map<String, Object> json) {
    return DartFile.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartFile = _$DartFileTearOff();

/// @nodoc
mixin _$DartFile {
  String get path;
  List<DartClass> get classes;
  List<DartEnum> get enums;
  List<DartField> get fields;
  List<String> get imports;
  List<DartMethod> get methods;

  Map<String, dynamic> toJson();
  $DartFileCopyWith<DartFile> get copyWith;
}

/// @nodoc
abstract class $DartFileCopyWith<$Res> {
  factory $DartFileCopyWith(DartFile value, $Res Function(DartFile) then) =
      _$DartFileCopyWithImpl<$Res>;
  $Res call(
      {String path,
      List<DartClass> classes,
      List<DartEnum> enums,
      List<DartField> fields,
      List<String> imports,
      List<DartMethod> methods});
}

/// @nodoc
class _$DartFileCopyWithImpl<$Res> implements $DartFileCopyWith<$Res> {
  _$DartFileCopyWithImpl(this._value, this._then);

  final DartFile _value;
  // ignore: unused_field
  final $Res Function(DartFile) _then;

  @override
  $Res call({
    Object path = freezed,
    Object classes = freezed,
    Object enums = freezed,
    Object fields = freezed,
    Object imports = freezed,
    Object methods = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      classes: classes == freezed ? _value.classes : classes as List<DartClass>,
      enums: enums == freezed ? _value.enums : enums as List<DartEnum>,
      fields: fields == freezed ? _value.fields : fields as List<DartField>,
      imports: imports == freezed ? _value.imports : imports as List<String>,
      methods:
          methods == freezed ? _value.methods : methods as List<DartMethod>,
    ));
  }
}

/// @nodoc
abstract class _$DartFileCopyWith<$Res> implements $DartFileCopyWith<$Res> {
  factory _$DartFileCopyWith(_DartFile value, $Res Function(_DartFile) then) =
      __$DartFileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String path,
      List<DartClass> classes,
      List<DartEnum> enums,
      List<DartField> fields,
      List<String> imports,
      List<DartMethod> methods});
}

/// @nodoc
class __$DartFileCopyWithImpl<$Res> extends _$DartFileCopyWithImpl<$Res>
    implements _$DartFileCopyWith<$Res> {
  __$DartFileCopyWithImpl(_DartFile _value, $Res Function(_DartFile) _then)
      : super(_value, (v) => _then(v as _DartFile));

  @override
  _DartFile get _value => super._value as _DartFile;

  @override
  $Res call({
    Object path = freezed,
    Object classes = freezed,
    Object enums = freezed,
    Object fields = freezed,
    Object imports = freezed,
    Object methods = freezed,
  }) {
    return _then(_DartFile(
      path: path == freezed ? _value.path : path as String,
      classes: classes == freezed ? _value.classes : classes as List<DartClass>,
      enums: enums == freezed ? _value.enums : enums as List<DartEnum>,
      fields: fields == freezed ? _value.fields : fields as List<DartField>,
      imports: imports == freezed ? _value.imports : imports as List<String>,
      methods:
          methods == freezed ? _value.methods : methods as List<DartMethod>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartFile implements _DartFile {
  const _$_DartFile(
      {this.path,
      this.classes = const [],
      this.enums = const [],
      this.fields = const [],
      this.imports = const [],
      this.methods = const []})
      : assert(classes != null),
        assert(enums != null),
        assert(fields != null),
        assert(imports != null),
        assert(methods != null);

  factory _$_DartFile.fromJson(Map<String, dynamic> json) =>
      _$_$_DartFileFromJson(json);

  @override
  final String path;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartClass> classes;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartEnum> enums;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartField> fields;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> imports;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartMethod> methods;

  @override
  String toString() {
    return 'DartFile(path: $path, classes: $classes, enums: $enums, fields: $fields, imports: $imports, methods: $methods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartFile &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality()
                    .equals(other.classes, classes)) &&
            (identical(other.enums, enums) ||
                const DeepCollectionEquality().equals(other.enums, enums)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.imports, imports) ||
                const DeepCollectionEquality()
                    .equals(other.imports, imports)) &&
            (identical(other.methods, methods) ||
                const DeepCollectionEquality().equals(other.methods, methods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(classes) ^
      const DeepCollectionEquality().hash(enums) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(imports) ^
      const DeepCollectionEquality().hash(methods);

  @override
  _$DartFileCopyWith<_DartFile> get copyWith =>
      __$DartFileCopyWithImpl<_DartFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartFileToJson(this);
  }
}

abstract class _DartFile implements DartFile {
  const factory _DartFile(
      {String path,
      List<DartClass> classes,
      List<DartEnum> enums,
      List<DartField> fields,
      List<String> imports,
      List<DartMethod> methods}) = _$_DartFile;

  factory _DartFile.fromJson(Map<String, dynamic> json) = _$_DartFile.fromJson;

  @override
  String get path;
  @override
  List<DartClass> get classes;
  @override
  List<DartEnum> get enums;
  @override
  List<DartField> get fields;
  @override
  List<String> get imports;
  @override
  List<DartMethod> get methods;
  @override
  _$DartFileCopyWith<_DartFile> get copyWith;
}
