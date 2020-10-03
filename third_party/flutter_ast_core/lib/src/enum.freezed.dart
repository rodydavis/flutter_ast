// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartEnum _$DartEnumFromJson(Map<String, dynamic> json) {
  return _DartEnum.fromJson(json);
}

/// @nodoc
class _$DartEnumTearOff {
  const _$DartEnumTearOff();

// ignore: unused_element
  _DartEnum call({@required String name, @required List<String> values}) {
    return _DartEnum(
      name: name,
      values: values,
    );
  }

// ignore: unused_element
  DartEnum fromJson(Map<String, Object> json) {
    return DartEnum.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartEnum = _$DartEnumTearOff();

/// @nodoc
mixin _$DartEnum {
  String get name;
  List<String> get values;

  Map<String, dynamic> toJson();
  $DartEnumCopyWith<DartEnum> get copyWith;
}

/// @nodoc
abstract class $DartEnumCopyWith<$Res> {
  factory $DartEnumCopyWith(DartEnum value, $Res Function(DartEnum) then) =
      _$DartEnumCopyWithImpl<$Res>;
  $Res call({String name, List<String> values});
}

/// @nodoc
class _$DartEnumCopyWithImpl<$Res> implements $DartEnumCopyWith<$Res> {
  _$DartEnumCopyWithImpl(this._value, this._then);

  final DartEnum _value;
  // ignore: unused_field
  final $Res Function(DartEnum) _then;

  @override
  $Res call({
    Object name = freezed,
    Object values = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      values: values == freezed ? _value.values : values as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DartEnumCopyWith<$Res> implements $DartEnumCopyWith<$Res> {
  factory _$DartEnumCopyWith(_DartEnum value, $Res Function(_DartEnum) then) =
      __$DartEnumCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> values});
}

/// @nodoc
class __$DartEnumCopyWithImpl<$Res> extends _$DartEnumCopyWithImpl<$Res>
    implements _$DartEnumCopyWith<$Res> {
  __$DartEnumCopyWithImpl(_DartEnum _value, $Res Function(_DartEnum) _then)
      : super(_value, (v) => _then(v as _DartEnum));

  @override
  _DartEnum get _value => super._value as _DartEnum;

  @override
  $Res call({
    Object name = freezed,
    Object values = freezed,
  }) {
    return _then(_DartEnum(
      name: name == freezed ? _value.name : name as String,
      values: values == freezed ? _value.values : values as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartEnum implements _DartEnum {
  const _$_DartEnum({@required this.name, @required this.values})
      : assert(name != null),
        assert(values != null);

  factory _$_DartEnum.fromJson(Map<String, dynamic> json) =>
      _$_$_DartEnumFromJson(json);

  @override
  final String name;
  @override
  final List<String> values;

  @override
  String toString() {
    return 'DartEnum(name: $name, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartEnum &&
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
  _$DartEnumCopyWith<_DartEnum> get copyWith =>
      __$DartEnumCopyWithImpl<_DartEnum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartEnumToJson(this);
  }
}

abstract class _DartEnum implements DartEnum {
  const factory _DartEnum(
      {@required String name, @required List<String> values}) = _$_DartEnum;

  factory _DartEnum.fromJson(Map<String, dynamic> json) = _$_DartEnum.fromJson;

  @override
  String get name;
  @override
  List<String> get values;
  @override
  _$DartEnumCopyWith<_DartEnum> get copyWith;
}
