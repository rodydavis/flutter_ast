// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartMethod _$DartMethodFromJson(Map<String, dynamic> json) {
  return _DartMethod.fromJson(json);
}

/// @nodoc
class _$DartMethodTearOff {
  const _$DartMethodTearOff();

// ignore: unused_element
  _DartMethod call(
      {@required String name,
      List<DartProperty> parameters = const [],
      @required MethodNode body}) {
    return _DartMethod(
      name: name,
      parameters: parameters,
      body: body,
    );
  }

// ignore: unused_element
  DartMethod fromJson(Map<String, Object> json) {
    return DartMethod.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartMethod = _$DartMethodTearOff();

/// @nodoc
mixin _$DartMethod {
  String get name;
  List<DartProperty> get parameters;
  MethodNode get body;

  Map<String, dynamic> toJson();
  $DartMethodCopyWith<DartMethod> get copyWith;
}

/// @nodoc
abstract class $DartMethodCopyWith<$Res> {
  factory $DartMethodCopyWith(
          DartMethod value, $Res Function(DartMethod) then) =
      _$DartMethodCopyWithImpl<$Res>;
  $Res call({String name, List<DartProperty> parameters, MethodNode body});

  $MethodNodeCopyWith<$Res> get body;
}

/// @nodoc
class _$DartMethodCopyWithImpl<$Res> implements $DartMethodCopyWith<$Res> {
  _$DartMethodCopyWithImpl(this._value, this._then);

  final DartMethod _value;
  // ignore: unused_field
  final $Res Function(DartMethod) _then;

  @override
  $Res call({
    Object name = freezed,
    Object parameters = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters as List<DartProperty>,
      body: body == freezed ? _value.body : body as MethodNode,
    ));
  }

  @override
  $MethodNodeCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $MethodNodeCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$DartMethodCopyWith<$Res> implements $DartMethodCopyWith<$Res> {
  factory _$DartMethodCopyWith(
          _DartMethod value, $Res Function(_DartMethod) then) =
      __$DartMethodCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<DartProperty> parameters, MethodNode body});

  @override
  $MethodNodeCopyWith<$Res> get body;
}

/// @nodoc
class __$DartMethodCopyWithImpl<$Res> extends _$DartMethodCopyWithImpl<$Res>
    implements _$DartMethodCopyWith<$Res> {
  __$DartMethodCopyWithImpl(
      _DartMethod _value, $Res Function(_DartMethod) _then)
      : super(_value, (v) => _then(v as _DartMethod));

  @override
  _DartMethod get _value => super._value as _DartMethod;

  @override
  $Res call({
    Object name = freezed,
    Object parameters = freezed,
    Object body = freezed,
  }) {
    return _then(_DartMethod(
      name: name == freezed ? _value.name : name as String,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters as List<DartProperty>,
      body: body == freezed ? _value.body : body as MethodNode,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartMethod implements _DartMethod {
  const _$_DartMethod(
      {@required this.name, this.parameters = const [], @required this.body})
      : assert(name != null),
        assert(parameters != null),
        assert(body != null);

  factory _$_DartMethod.fromJson(Map<String, dynamic> json) =>
      _$_$_DartMethodFromJson(json);

  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartProperty> parameters;
  @override
  final MethodNode body;

  @override
  String toString() {
    return 'DartMethod(name: $name, parameters: $parameters, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartMethod &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.parameters, parameters) ||
                const DeepCollectionEquality()
                    .equals(other.parameters, parameters)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(parameters) ^
      const DeepCollectionEquality().hash(body);

  @override
  _$DartMethodCopyWith<_DartMethod> get copyWith =>
      __$DartMethodCopyWithImpl<_DartMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartMethodToJson(this);
  }
}

abstract class _DartMethod implements DartMethod {
  const factory _DartMethod(
      {@required String name,
      List<DartProperty> parameters,
      @required MethodNode body}) = _$_DartMethod;

  factory _DartMethod.fromJson(Map<String, dynamic> json) =
      _$_DartMethod.fromJson;

  @override
  String get name;
  @override
  List<DartProperty> get parameters;
  @override
  MethodNode get body;
  @override
  _$DartMethodCopyWith<_DartMethod> get copyWith;
}

MethodNode _$MethodNodeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return MethodBase.fromJson(json);
    case 'values':
      return MethodValues.fromJson(json);
    case 'binary':
      return MethodBinary.fromJson(json);
    case 'constructor':
      return MethodConstructor.fromJson(json);
    case 'simple':
      return MethodSimple.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$MethodNodeTearOff {
  const _$MethodNodeTearOff();

// ignore: unused_element
  MethodBase call({@required String name}) {
    return MethodBase(
      name: name,
    );
  }

// ignore: unused_element
  MethodValues values({@required String name, List<MethodNode> values}) {
    return MethodValues(
      name: name,
      values: values,
    );
  }

// ignore: unused_element
  MethodBinary binary(
      {@required String name,
      @required MethodNode left,
      @required MethodNode right,
      @required String operation}) {
    return MethodBinary(
      name: name,
      left: left,
      right: right,
      operation: operation,
    );
  }

// ignore: unused_element
  MethodConstructor constructor(
      {@required String name,
      @required String value,
      Map<String, MethodNode> arguments = const {}}) {
    return MethodConstructor(
      name: name,
      value: value,
      arguments: arguments,
    );
  }

// ignore: unused_element
  MethodSimple simple({@required String name, @required dynamic value}) {
    return MethodSimple(
      name: name,
      value: value,
    );
  }

// ignore: unused_element
  MethodNode fromJson(Map<String, Object> json) {
    return MethodNode.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MethodNode = _$MethodNodeTearOff();

/// @nodoc
mixin _$MethodNode {
  String get name;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name), {
    @required Result values(String name, List<MethodNode> values),
    @required
        Result binary(
            String name, MethodNode left, MethodNode right, String operation),
    @required
        Result constructor(
            String name, String value, Map<String, MethodNode> arguments),
    @required Result simple(String name, dynamic value),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name), {
    Result values(String name, List<MethodNode> values),
    Result binary(
        String name, MethodNode left, MethodNode right, String operation),
    Result constructor(
        String name, String value, Map<String, MethodNode> arguments),
    Result simple(String name, dynamic value),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MethodBase value), {
    @required Result values(MethodValues value),
    @required Result binary(MethodBinary value),
    @required Result constructor(MethodConstructor value),
    @required Result simple(MethodSimple value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MethodBase value), {
    Result values(MethodValues value),
    Result binary(MethodBinary value),
    Result constructor(MethodConstructor value),
    Result simple(MethodSimple value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $MethodNodeCopyWith<MethodNode> get copyWith;
}

/// @nodoc
abstract class $MethodNodeCopyWith<$Res> {
  factory $MethodNodeCopyWith(
          MethodNode value, $Res Function(MethodNode) then) =
      _$MethodNodeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$MethodNodeCopyWithImpl<$Res> implements $MethodNodeCopyWith<$Res> {
  _$MethodNodeCopyWithImpl(this._value, this._then);

  final MethodNode _value;
  // ignore: unused_field
  final $Res Function(MethodNode) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class $MethodBaseCopyWith<$Res> implements $MethodNodeCopyWith<$Res> {
  factory $MethodBaseCopyWith(
          MethodBase value, $Res Function(MethodBase) then) =
      _$MethodBaseCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class _$MethodBaseCopyWithImpl<$Res> extends _$MethodNodeCopyWithImpl<$Res>
    implements $MethodBaseCopyWith<$Res> {
  _$MethodBaseCopyWithImpl(MethodBase _value, $Res Function(MethodBase) _then)
      : super(_value, (v) => _then(v as MethodBase));

  @override
  MethodBase get _value => super._value as MethodBase;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(MethodBase(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MethodBase implements MethodBase {
  const _$MethodBase({@required this.name}) : assert(name != null);

  factory _$MethodBase.fromJson(Map<String, dynamic> json) =>
      _$_$MethodBaseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'MethodNode(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MethodBase &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $MethodBaseCopyWith<MethodBase> get copyWith =>
      _$MethodBaseCopyWithImpl<MethodBase>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name), {
    @required Result values(String name, List<MethodNode> values),
    @required
        Result binary(
            String name, MethodNode left, MethodNode right, String operation),
    @required
        Result constructor(
            String name, String value, Map<String, MethodNode> arguments),
    @required Result simple(String name, dynamic value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return $default(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name), {
    Result values(String name, List<MethodNode> values),
    Result binary(
        String name, MethodNode left, MethodNode right, String operation),
    Result constructor(
        String name, String value, Map<String, MethodNode> arguments),
    Result simple(String name, dynamic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MethodBase value), {
    @required Result values(MethodValues value),
    @required Result binary(MethodBinary value),
    @required Result constructor(MethodConstructor value),
    @required Result simple(MethodSimple value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MethodBase value), {
    Result values(MethodValues value),
    Result binary(MethodBinary value),
    Result constructor(MethodConstructor value),
    Result simple(MethodSimple value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MethodBaseToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class MethodBase implements MethodNode {
  const factory MethodBase({@required String name}) = _$MethodBase;

  factory MethodBase.fromJson(Map<String, dynamic> json) =
      _$MethodBase.fromJson;

  @override
  String get name;
  @override
  $MethodBaseCopyWith<MethodBase> get copyWith;
}

/// @nodoc
abstract class $MethodValuesCopyWith<$Res>
    implements $MethodNodeCopyWith<$Res> {
  factory $MethodValuesCopyWith(
          MethodValues value, $Res Function(MethodValues) then) =
      _$MethodValuesCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<MethodNode> values});
}

/// @nodoc
class _$MethodValuesCopyWithImpl<$Res> extends _$MethodNodeCopyWithImpl<$Res>
    implements $MethodValuesCopyWith<$Res> {
  _$MethodValuesCopyWithImpl(
      MethodValues _value, $Res Function(MethodValues) _then)
      : super(_value, (v) => _then(v as MethodValues));

  @override
  MethodValues get _value => super._value as MethodValues;

  @override
  $Res call({
    Object name = freezed,
    Object values = freezed,
  }) {
    return _then(MethodValues(
      name: name == freezed ? _value.name : name as String,
      values: values == freezed ? _value.values : values as List<MethodNode>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MethodValues implements MethodValues {
  const _$MethodValues({@required this.name, this.values})
      : assert(name != null);

  factory _$MethodValues.fromJson(Map<String, dynamic> json) =>
      _$_$MethodValuesFromJson(json);

  @override
  final String name;
  @override
  final List<MethodNode> values;

  @override
  String toString() {
    return 'MethodNode.values(name: $name, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MethodValues &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(values);

  @override
  $MethodValuesCopyWith<MethodValues> get copyWith =>
      _$MethodValuesCopyWithImpl<MethodValues>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name), {
    @required Result values(String name, List<MethodNode> values),
    @required
        Result binary(
            String name, MethodNode left, MethodNode right, String operation),
    @required
        Result constructor(
            String name, String value, Map<String, MethodNode> arguments),
    @required Result simple(String name, dynamic value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return values(name, this.values);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name), {
    Result values(String name, List<MethodNode> values),
    Result binary(
        String name, MethodNode left, MethodNode right, String operation),
    Result constructor(
        String name, String value, Map<String, MethodNode> arguments),
    Result simple(String name, dynamic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (values != null) {
      return values(name, this.values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MethodBase value), {
    @required Result values(MethodValues value),
    @required Result binary(MethodBinary value),
    @required Result constructor(MethodConstructor value),
    @required Result simple(MethodSimple value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return values(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MethodBase value), {
    Result values(MethodValues value),
    Result binary(MethodBinary value),
    Result constructor(MethodConstructor value),
    Result simple(MethodSimple value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (values != null) {
      return values(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MethodValuesToJson(this)..['runtimeType'] = 'values';
  }
}

abstract class MethodValues implements MethodNode {
  const factory MethodValues({@required String name, List<MethodNode> values}) =
      _$MethodValues;

  factory MethodValues.fromJson(Map<String, dynamic> json) =
      _$MethodValues.fromJson;

  @override
  String get name;
  List<MethodNode> get values;
  @override
  $MethodValuesCopyWith<MethodValues> get copyWith;
}

/// @nodoc
abstract class $MethodBinaryCopyWith<$Res>
    implements $MethodNodeCopyWith<$Res> {
  factory $MethodBinaryCopyWith(
          MethodBinary value, $Res Function(MethodBinary) then) =
      _$MethodBinaryCopyWithImpl<$Res>;
  @override
  $Res call({String name, MethodNode left, MethodNode right, String operation});

  $MethodNodeCopyWith<$Res> get left;
  $MethodNodeCopyWith<$Res> get right;
}

/// @nodoc
class _$MethodBinaryCopyWithImpl<$Res> extends _$MethodNodeCopyWithImpl<$Res>
    implements $MethodBinaryCopyWith<$Res> {
  _$MethodBinaryCopyWithImpl(
      MethodBinary _value, $Res Function(MethodBinary) _then)
      : super(_value, (v) => _then(v as MethodBinary));

  @override
  MethodBinary get _value => super._value as MethodBinary;

  @override
  $Res call({
    Object name = freezed,
    Object left = freezed,
    Object right = freezed,
    Object operation = freezed,
  }) {
    return _then(MethodBinary(
      name: name == freezed ? _value.name : name as String,
      left: left == freezed ? _value.left : left as MethodNode,
      right: right == freezed ? _value.right : right as MethodNode,
      operation: operation == freezed ? _value.operation : operation as String,
    ));
  }

  @override
  $MethodNodeCopyWith<$Res> get left {
    if (_value.left == null) {
      return null;
    }
    return $MethodNodeCopyWith<$Res>(_value.left, (value) {
      return _then(_value.copyWith(left: value));
    });
  }

  @override
  $MethodNodeCopyWith<$Res> get right {
    if (_value.right == null) {
      return null;
    }
    return $MethodNodeCopyWith<$Res>(_value.right, (value) {
      return _then(_value.copyWith(right: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$MethodBinary implements MethodBinary {
  const _$MethodBinary(
      {@required this.name,
      @required this.left,
      @required this.right,
      @required this.operation})
      : assert(name != null),
        assert(left != null),
        assert(right != null),
        assert(operation != null);

  factory _$MethodBinary.fromJson(Map<String, dynamic> json) =>
      _$_$MethodBinaryFromJson(json);

  @override
  final String name;
  @override
  final MethodNode left;
  @override
  final MethodNode right;
  @override
  final String operation;

  @override
  String toString() {
    return 'MethodNode.binary(name: $name, left: $left, right: $right, operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MethodBinary &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.left, left) ||
                const DeepCollectionEquality().equals(other.left, left)) &&
            (identical(other.right, right) ||
                const DeepCollectionEquality().equals(other.right, right)) &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(left) ^
      const DeepCollectionEquality().hash(right) ^
      const DeepCollectionEquality().hash(operation);

  @override
  $MethodBinaryCopyWith<MethodBinary> get copyWith =>
      _$MethodBinaryCopyWithImpl<MethodBinary>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name), {
    @required Result values(String name, List<MethodNode> values),
    @required
        Result binary(
            String name, MethodNode left, MethodNode right, String operation),
    @required
        Result constructor(
            String name, String value, Map<String, MethodNode> arguments),
    @required Result simple(String name, dynamic value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return binary(name, left, right, operation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name), {
    Result values(String name, List<MethodNode> values),
    Result binary(
        String name, MethodNode left, MethodNode right, String operation),
    Result constructor(
        String name, String value, Map<String, MethodNode> arguments),
    Result simple(String name, dynamic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (binary != null) {
      return binary(name, left, right, operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MethodBase value), {
    @required Result values(MethodValues value),
    @required Result binary(MethodBinary value),
    @required Result constructor(MethodConstructor value),
    @required Result simple(MethodSimple value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return binary(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MethodBase value), {
    Result values(MethodValues value),
    Result binary(MethodBinary value),
    Result constructor(MethodConstructor value),
    Result simple(MethodSimple value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (binary != null) {
      return binary(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MethodBinaryToJson(this)..['runtimeType'] = 'binary';
  }
}

abstract class MethodBinary implements MethodNode {
  const factory MethodBinary(
      {@required String name,
      @required MethodNode left,
      @required MethodNode right,
      @required String operation}) = _$MethodBinary;

  factory MethodBinary.fromJson(Map<String, dynamic> json) =
      _$MethodBinary.fromJson;

  @override
  String get name;
  MethodNode get left;
  MethodNode get right;
  String get operation;
  @override
  $MethodBinaryCopyWith<MethodBinary> get copyWith;
}

/// @nodoc
abstract class $MethodConstructorCopyWith<$Res>
    implements $MethodNodeCopyWith<$Res> {
  factory $MethodConstructorCopyWith(
          MethodConstructor value, $Res Function(MethodConstructor) then) =
      _$MethodConstructorCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value, Map<String, MethodNode> arguments});
}

/// @nodoc
class _$MethodConstructorCopyWithImpl<$Res>
    extends _$MethodNodeCopyWithImpl<$Res>
    implements $MethodConstructorCopyWith<$Res> {
  _$MethodConstructorCopyWithImpl(
      MethodConstructor _value, $Res Function(MethodConstructor) _then)
      : super(_value, (v) => _then(v as MethodConstructor));

  @override
  MethodConstructor get _value => super._value as MethodConstructor;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
    Object arguments = freezed,
  }) {
    return _then(MethodConstructor(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
      arguments: arguments == freezed
          ? _value.arguments
          : arguments as Map<String, MethodNode>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MethodConstructor implements MethodConstructor {
  const _$MethodConstructor(
      {@required this.name, @required this.value, this.arguments = const {}})
      : assert(name != null),
        assert(value != null),
        assert(arguments != null);

  factory _$MethodConstructor.fromJson(Map<String, dynamic> json) =>
      _$_$MethodConstructorFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MethodNode> arguments;

  @override
  String toString() {
    return 'MethodNode.constructor(name: $name, value: $value, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MethodConstructor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.arguments, arguments) ||
                const DeepCollectionEquality()
                    .equals(other.arguments, arguments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(arguments);

  @override
  $MethodConstructorCopyWith<MethodConstructor> get copyWith =>
      _$MethodConstructorCopyWithImpl<MethodConstructor>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name), {
    @required Result values(String name, List<MethodNode> values),
    @required
        Result binary(
            String name, MethodNode left, MethodNode right, String operation),
    @required
        Result constructor(
            String name, String value, Map<String, MethodNode> arguments),
    @required Result simple(String name, dynamic value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return constructor(name, value, arguments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name), {
    Result values(String name, List<MethodNode> values),
    Result binary(
        String name, MethodNode left, MethodNode right, String operation),
    Result constructor(
        String name, String value, Map<String, MethodNode> arguments),
    Result simple(String name, dynamic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (constructor != null) {
      return constructor(name, value, arguments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MethodBase value), {
    @required Result values(MethodValues value),
    @required Result binary(MethodBinary value),
    @required Result constructor(MethodConstructor value),
    @required Result simple(MethodSimple value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return constructor(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MethodBase value), {
    Result values(MethodValues value),
    Result binary(MethodBinary value),
    Result constructor(MethodConstructor value),
    Result simple(MethodSimple value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (constructor != null) {
      return constructor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MethodConstructorToJson(this)..['runtimeType'] = 'constructor';
  }
}

abstract class MethodConstructor implements MethodNode {
  const factory MethodConstructor(
      {@required String name,
      @required String value,
      Map<String, MethodNode> arguments}) = _$MethodConstructor;

  factory MethodConstructor.fromJson(Map<String, dynamic> json) =
      _$MethodConstructor.fromJson;

  @override
  String get name;
  String get value;
  Map<String, MethodNode> get arguments;
  @override
  $MethodConstructorCopyWith<MethodConstructor> get copyWith;
}

/// @nodoc
abstract class $MethodSimpleCopyWith<$Res>
    implements $MethodNodeCopyWith<$Res> {
  factory $MethodSimpleCopyWith(
          MethodSimple value, $Res Function(MethodSimple) then) =
      _$MethodSimpleCopyWithImpl<$Res>;
  @override
  $Res call({String name, dynamic value});
}

/// @nodoc
class _$MethodSimpleCopyWithImpl<$Res> extends _$MethodNodeCopyWithImpl<$Res>
    implements $MethodSimpleCopyWith<$Res> {
  _$MethodSimpleCopyWithImpl(
      MethodSimple _value, $Res Function(MethodSimple) _then)
      : super(_value, (v) => _then(v as MethodSimple));

  @override
  MethodSimple get _value => super._value as MethodSimple;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
  }) {
    return _then(MethodSimple(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as dynamic,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MethodSimple implements MethodSimple {
  const _$MethodSimple({@required this.name, @required this.value})
      : assert(name != null),
        assert(value != null);

  factory _$MethodSimple.fromJson(Map<String, dynamic> json) =>
      _$_$MethodSimpleFromJson(json);

  @override
  final String name;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'MethodNode.simple(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MethodSimple &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value);

  @override
  $MethodSimpleCopyWith<MethodSimple> get copyWith =>
      _$MethodSimpleCopyWithImpl<MethodSimple>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name), {
    @required Result values(String name, List<MethodNode> values),
    @required
        Result binary(
            String name, MethodNode left, MethodNode right, String operation),
    @required
        Result constructor(
            String name, String value, Map<String, MethodNode> arguments),
    @required Result simple(String name, dynamic value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return simple(name, value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name), {
    Result values(String name, List<MethodNode> values),
    Result binary(
        String name, MethodNode left, MethodNode right, String operation),
    Result constructor(
        String name, String value, Map<String, MethodNode> arguments),
    Result simple(String name, dynamic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (simple != null) {
      return simple(name, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(MethodBase value), {
    @required Result values(MethodValues value),
    @required Result binary(MethodBinary value),
    @required Result constructor(MethodConstructor value),
    @required Result simple(MethodSimple value),
  }) {
    assert($default != null);
    assert(values != null);
    assert(binary != null);
    assert(constructor != null);
    assert(simple != null);
    return simple(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(MethodBase value), {
    Result values(MethodValues value),
    Result binary(MethodBinary value),
    Result constructor(MethodConstructor value),
    Result simple(MethodSimple value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (simple != null) {
      return simple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MethodSimpleToJson(this)..['runtimeType'] = 'simple';
  }
}

abstract class MethodSimple implements MethodNode {
  const factory MethodSimple({@required String name, @required dynamic value}) =
      _$MethodSimple;

  factory MethodSimple.fromJson(Map<String, dynamic> json) =
      _$MethodSimple.fromJson;

  @override
  String get name;
  dynamic get value;
  @override
  $MethodSimpleCopyWith<MethodSimple> get copyWith;
}
