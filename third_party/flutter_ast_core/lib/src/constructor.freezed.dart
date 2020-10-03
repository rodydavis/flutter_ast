// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'constructor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartConstructor _$DartConstructorFromJson(Map<String, dynamic> json) {
  return _DartConstructor.fromJson(json);
}

/// @nodoc
class _$DartConstructorTearOff {
  const _$DartConstructorTearOff();

// ignore: unused_element
  _DartConstructor call(
      {@required String name, List<DartProperty> properties = const []}) {
    return _DartConstructor(
      name: name,
      properties: properties,
    );
  }

// ignore: unused_element
  DartConstructor fromJson(Map<String, Object> json) {
    return DartConstructor.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartConstructor = _$DartConstructorTearOff();

/// @nodoc
mixin _$DartConstructor {
  String get name;
  List<DartProperty> get properties;

  Map<String, dynamic> toJson();
  $DartConstructorCopyWith<DartConstructor> get copyWith;
}

/// @nodoc
abstract class $DartConstructorCopyWith<$Res> {
  factory $DartConstructorCopyWith(
          DartConstructor value, $Res Function(DartConstructor) then) =
      _$DartConstructorCopyWithImpl<$Res>;
  $Res call({String name, List<DartProperty> properties});
}

/// @nodoc
class _$DartConstructorCopyWithImpl<$Res>
    implements $DartConstructorCopyWith<$Res> {
  _$DartConstructorCopyWithImpl(this._value, this._then);

  final DartConstructor _value;
  // ignore: unused_field
  final $Res Function(DartConstructor) _then;

  @override
  $Res call({
    Object name = freezed,
    Object properties = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      properties: properties == freezed
          ? _value.properties
          : properties as List<DartProperty>,
    ));
  }
}

/// @nodoc
abstract class _$DartConstructorCopyWith<$Res>
    implements $DartConstructorCopyWith<$Res> {
  factory _$DartConstructorCopyWith(
          _DartConstructor value, $Res Function(_DartConstructor) then) =
      __$DartConstructorCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<DartProperty> properties});
}

/// @nodoc
class __$DartConstructorCopyWithImpl<$Res>
    extends _$DartConstructorCopyWithImpl<$Res>
    implements _$DartConstructorCopyWith<$Res> {
  __$DartConstructorCopyWithImpl(
      _DartConstructor _value, $Res Function(_DartConstructor) _then)
      : super(_value, (v) => _then(v as _DartConstructor));

  @override
  _DartConstructor get _value => super._value as _DartConstructor;

  @override
  $Res call({
    Object name = freezed,
    Object properties = freezed,
  }) {
    return _then(_DartConstructor(
      name: name == freezed ? _value.name : name as String,
      properties: properties == freezed
          ? _value.properties
          : properties as List<DartProperty>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartConstructor implements _DartConstructor {
  const _$_DartConstructor({@required this.name, this.properties = const []})
      : assert(name != null),
        assert(properties != null);

  factory _$_DartConstructor.fromJson(Map<String, dynamic> json) =>
      _$_$_DartConstructorFromJson(json);

  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<DartProperty> properties;

  @override
  String toString() {
    return 'DartConstructor(name: $name, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartConstructor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(properties);

  @override
  _$DartConstructorCopyWith<_DartConstructor> get copyWith =>
      __$DartConstructorCopyWithImpl<_DartConstructor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartConstructorToJson(this);
  }
}

abstract class _DartConstructor implements DartConstructor {
  const factory _DartConstructor(
      {@required String name,
      List<DartProperty> properties}) = _$_DartConstructor;

  factory _DartConstructor.fromJson(Map<String, dynamic> json) =
      _$_DartConstructor.fromJson;

  @override
  String get name;
  @override
  List<DartProperty> get properties;
  @override
  _$DartConstructorCopyWith<_DartConstructor> get copyWith;
}
