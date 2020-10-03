// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartClass _$DartClassFromJson(Map<String, dynamic> json) {
  return _DartClass.fromJson(json);
}

/// @nodoc
class _$DartClassTearOff {
  const _$DartClassTearOff();

// ignore: unused_element
  _DartClass call(
      {List<DartConstructor> constructors = const [],
      List<DartComment> comments = const [],
      List<DartField> fields = const [],
      List<DartMethod> methods = const [],
      @required String name,
      bool isAbstract,
      String extendsClause,
      String implementsClause,
      String withClause}) {
    return _DartClass(
      constructors: constructors,
      comments: comments,
      fields: fields,
      methods: methods,
      name: name,
      isAbstract: isAbstract,
      extendsClause: extendsClause,
      implementsClause: implementsClause,
      withClause: withClause,
    );
  }

// ignore: unused_element
  DartClass fromJson(Map<String, Object> json) {
    return DartClass.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartClass = _$DartClassTearOff();

/// @nodoc
mixin _$DartClass {
  List<DartConstructor> get constructors;
  List<DartComment> get comments;
  List<DartField> get fields;
  List<DartMethod> get methods;
  String get name;
  bool get isAbstract;
  String get extendsClause;
  String get implementsClause;
  String get withClause;

  Map<String, dynamic> toJson();
  $DartClassCopyWith<DartClass> get copyWith;
}

/// @nodoc
abstract class $DartClassCopyWith<$Res> {
  factory $DartClassCopyWith(DartClass value, $Res Function(DartClass) then) =
      _$DartClassCopyWithImpl<$Res>;
  $Res call(
      {List<DartConstructor> constructors,
      List<DartComment> comments,
      List<DartField> fields,
      List<DartMethod> methods,
      String name,
      bool isAbstract,
      String extendsClause,
      String implementsClause,
      String withClause});
}

/// @nodoc
class _$DartClassCopyWithImpl<$Res> implements $DartClassCopyWith<$Res> {
  _$DartClassCopyWithImpl(this._value, this._then);

  final DartClass _value;
  // ignore: unused_field
  final $Res Function(DartClass) _then;

  @override
  $Res call({
    Object constructors = freezed,
    Object comments = freezed,
    Object fields = freezed,
    Object methods = freezed,
    Object name = freezed,
    Object isAbstract = freezed,
    Object extendsClause = freezed,
    Object implementsClause = freezed,
    Object withClause = freezed,
  }) {
    return _then(_value.copyWith(
      constructors: constructors == freezed
          ? _value.constructors
          : constructors as List<DartConstructor>,
      comments:
          comments == freezed ? _value.comments : comments as List<DartComment>,
      fields: fields == freezed ? _value.fields : fields as List<DartField>,
      methods:
          methods == freezed ? _value.methods : methods as List<DartMethod>,
      name: name == freezed ? _value.name : name as String,
      isAbstract:
          isAbstract == freezed ? _value.isAbstract : isAbstract as bool,
      extendsClause: extendsClause == freezed
          ? _value.extendsClause
          : extendsClause as String,
      implementsClause: implementsClause == freezed
          ? _value.implementsClause
          : implementsClause as String,
      withClause:
          withClause == freezed ? _value.withClause : withClause as String,
    ));
  }
}

/// @nodoc
abstract class _$DartClassCopyWith<$Res> implements $DartClassCopyWith<$Res> {
  factory _$DartClassCopyWith(
          _DartClass value, $Res Function(_DartClass) then) =
      __$DartClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DartConstructor> constructors,
      List<DartComment> comments,
      List<DartField> fields,
      List<DartMethod> methods,
      String name,
      bool isAbstract,
      String extendsClause,
      String implementsClause,
      String withClause});
}

/// @nodoc
class __$DartClassCopyWithImpl<$Res> extends _$DartClassCopyWithImpl<$Res>
    implements _$DartClassCopyWith<$Res> {
  __$DartClassCopyWithImpl(_DartClass _value, $Res Function(_DartClass) _then)
      : super(_value, (v) => _then(v as _DartClass));

  @override
  _DartClass get _value => super._value as _DartClass;

  @override
  $Res call({
    Object constructors = freezed,
    Object comments = freezed,
    Object fields = freezed,
    Object methods = freezed,
    Object name = freezed,
    Object isAbstract = freezed,
    Object extendsClause = freezed,
    Object implementsClause = freezed,
    Object withClause = freezed,
  }) {
    return _then(_DartClass(
      constructors: constructors == freezed
          ? _value.constructors
          : constructors as List<DartConstructor>,
      comments:
          comments == freezed ? _value.comments : comments as List<DartComment>,
      fields: fields == freezed ? _value.fields : fields as List<DartField>,
      methods:
          methods == freezed ? _value.methods : methods as List<DartMethod>,
      name: name == freezed ? _value.name : name as String,
      isAbstract:
          isAbstract == freezed ? _value.isAbstract : isAbstract as bool,
      extendsClause: extendsClause == freezed
          ? _value.extendsClause
          : extendsClause as String,
      implementsClause: implementsClause == freezed
          ? _value.implementsClause
          : implementsClause as String,
      withClause:
          withClause == freezed ? _value.withClause : withClause as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartClass implements _DartClass {
  const _$_DartClass(
      {this.constructors = const [],
      this.comments = const [],
      this.fields = const [],
      this.methods = const [],
      @required this.name,
      this.isAbstract,
      this.extendsClause,
      this.implementsClause,
      this.withClause})
      : assert(constructors != null),
        assert(comments != null),
        assert(fields != null),
        assert(methods != null),
        assert(name != null);

  factory _$_DartClass.fromJson(Map<String, dynamic> json) =>
      _$_$_DartClassFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<DartConstructor> constructors;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartComment> comments;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartField> fields;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartMethod> methods;
  @override
  final String name;
  @override
  final bool isAbstract;
  @override
  final String extendsClause;
  @override
  final String implementsClause;
  @override
  final String withClause;

  @override
  String toString() {
    return 'DartClass(constructors: $constructors, comments: $comments, fields: $fields, methods: $methods, name: $name, isAbstract: $isAbstract, extendsClause: $extendsClause, implementsClause: $implementsClause, withClause: $withClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartClass &&
            (identical(other.constructors, constructors) ||
                const DeepCollectionEquality()
                    .equals(other.constructors, constructors)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.methods, methods) ||
                const DeepCollectionEquality()
                    .equals(other.methods, methods)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isAbstract, isAbstract) ||
                const DeepCollectionEquality()
                    .equals(other.isAbstract, isAbstract)) &&
            (identical(other.extendsClause, extendsClause) ||
                const DeepCollectionEquality()
                    .equals(other.extendsClause, extendsClause)) &&
            (identical(other.implementsClause, implementsClause) ||
                const DeepCollectionEquality()
                    .equals(other.implementsClause, implementsClause)) &&
            (identical(other.withClause, withClause) ||
                const DeepCollectionEquality()
                    .equals(other.withClause, withClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(constructors) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(methods) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isAbstract) ^
      const DeepCollectionEquality().hash(extendsClause) ^
      const DeepCollectionEquality().hash(implementsClause) ^
      const DeepCollectionEquality().hash(withClause);

  @override
  _$DartClassCopyWith<_DartClass> get copyWith =>
      __$DartClassCopyWithImpl<_DartClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartClassToJson(this);
  }
}

abstract class _DartClass implements DartClass {
  const factory _DartClass(
      {List<DartConstructor> constructors,
      List<DartComment> comments,
      List<DartField> fields,
      List<DartMethod> methods,
      @required String name,
      bool isAbstract,
      String extendsClause,
      String implementsClause,
      String withClause}) = _$_DartClass;

  factory _DartClass.fromJson(Map<String, dynamic> json) =
      _$_DartClass.fromJson;

  @override
  List<DartConstructor> get constructors;
  @override
  List<DartComment> get comments;
  @override
  List<DartField> get fields;
  @override
  List<DartMethod> get methods;
  @override
  String get name;
  @override
  bool get isAbstract;
  @override
  String get extendsClause;
  @override
  String get implementsClause;
  @override
  String get withClause;
  @override
  _$DartClassCopyWith<_DartClass> get copyWith;
}
