// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartCore _$DartCoreFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _DartCore.fromJson(json);
    case 'property':
      return DartProperty.fromJson(json);
    case 'field':
      return DartField.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$DartCoreTearOff {
  const _$DartCoreTearOff();

// ignore: unused_element
  _DartCore call({@required String type, @required String value}) {
    return _DartCore(
      type: type,
      value: value,
    );
  }

// ignore: unused_element
  DartProperty property(
      {@required String name,
      String key,
      @required String type,
      DartCore value,
      bool isOptional = true,
      bool isNamed = false,
      bool isPositional = false,
      bool isRequired = false,
      bool isRequiredPositional = false,
      bool isSynthetic = false,
      bool isRequiredNamed = false,
      bool isOptionalNamed = false,
      int position}) {
    return DartProperty(
      name: name,
      key: key,
      type: type,
      value: value,
      isOptional: isOptional,
      isNamed: isNamed,
      isPositional: isPositional,
      isRequired: isRequired,
      isRequiredPositional: isRequiredPositional,
      isSynthetic: isSynthetic,
      isRequiredNamed: isRequiredNamed,
      isOptionalNamed: isOptionalNamed,
      position: position,
    );
  }

// ignore: unused_element
  DartField field(
      {@required String name,
      @required String type,
      DartCore value,
      bool isFinal = false,
      bool isConst = false,
      bool isStatic = false}) {
    return DartField(
      name: name,
      type: type,
      value: value,
      isFinal: isFinal,
      isConst: isConst,
      isStatic: isStatic,
    );
  }

// ignore: unused_element
  DartCore fromJson(Map<String, Object> json) {
    return DartCore.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartCore = _$DartCoreTearOff();

/// @nodoc
mixin _$DartCore {
  String get type;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String type, String value), {
    @required
        Result property(
            String name,
            String key,
            String type,
            DartCore value,
            bool isOptional,
            bool isNamed,
            bool isPositional,
            bool isRequired,
            bool isRequiredPositional,
            bool isSynthetic,
            bool isRequiredNamed,
            bool isOptionalNamed,
            int position),
    @required
        Result field(String name, String type, DartCore value, bool isFinal,
            bool isConst, bool isStatic),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String type, String value), {
    Result property(
        String name,
        String key,
        String type,
        DartCore value,
        bool isOptional,
        bool isNamed,
        bool isPositional,
        bool isRequired,
        bool isRequiredPositional,
        bool isSynthetic,
        bool isRequiredNamed,
        bool isOptionalNamed,
        int position),
    Result field(String name, String type, DartCore value, bool isFinal,
        bool isConst, bool isStatic),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_DartCore value), {
    @required Result property(DartProperty value),
    @required Result field(DartField value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_DartCore value), {
    Result property(DartProperty value),
    Result field(DartField value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $DartCoreCopyWith<DartCore> get copyWith;
}

/// @nodoc
abstract class $DartCoreCopyWith<$Res> {
  factory $DartCoreCopyWith(DartCore value, $Res Function(DartCore) then) =
      _$DartCoreCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class _$DartCoreCopyWithImpl<$Res> implements $DartCoreCopyWith<$Res> {
  _$DartCoreCopyWithImpl(this._value, this._then);

  final DartCore _value;
  // ignore: unused_field
  final $Res Function(DartCore) _then;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
abstract class _$DartCoreCopyWith<$Res> implements $DartCoreCopyWith<$Res> {
  factory _$DartCoreCopyWith(_DartCore value, $Res Function(_DartCore) then) =
      __$DartCoreCopyWithImpl<$Res>;
  @override
  $Res call({String type, String value});
}

/// @nodoc
class __$DartCoreCopyWithImpl<$Res> extends _$DartCoreCopyWithImpl<$Res>
    implements _$DartCoreCopyWith<$Res> {
  __$DartCoreCopyWithImpl(_DartCore _value, $Res Function(_DartCore) _then)
      : super(_value, (v) => _then(v as _DartCore));

  @override
  _DartCore get _value => super._value as _DartCore;

  @override
  $Res call({
    Object type = freezed,
    Object value = freezed,
  }) {
    return _then(_DartCore(
      type: type == freezed ? _value.type : type as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartCore implements _DartCore {
  const _$_DartCore({@required this.type, @required this.value})
      : assert(type != null),
        assert(value != null);

  factory _$_DartCore.fromJson(Map<String, dynamic> json) =>
      _$_$_DartCoreFromJson(json);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'DartCore(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartCore &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value);

  @override
  _$DartCoreCopyWith<_DartCore> get copyWith =>
      __$DartCoreCopyWithImpl<_DartCore>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String type, String value), {
    @required
        Result property(
            String name,
            String key,
            String type,
            DartCore value,
            bool isOptional,
            bool isNamed,
            bool isPositional,
            bool isRequired,
            bool isRequiredPositional,
            bool isSynthetic,
            bool isRequiredNamed,
            bool isOptionalNamed,
            int position),
    @required
        Result field(String name, String type, DartCore value, bool isFinal,
            bool isConst, bool isStatic),
  }) {
    assert($default != null);
    assert(property != null);
    assert(field != null);
    return $default(type, value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String type, String value), {
    Result property(
        String name,
        String key,
        String type,
        DartCore value,
        bool isOptional,
        bool isNamed,
        bool isPositional,
        bool isRequired,
        bool isRequiredPositional,
        bool isSynthetic,
        bool isRequiredNamed,
        bool isOptionalNamed,
        int position),
    Result field(String name, String type, DartCore value, bool isFinal,
        bool isConst, bool isStatic),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(type, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_DartCore value), {
    @required Result property(DartProperty value),
    @required Result field(DartField value),
  }) {
    assert($default != null);
    assert(property != null);
    assert(field != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_DartCore value), {
    Result property(DartProperty value),
    Result field(DartField value),
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
    return _$_$_DartCoreToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _DartCore implements DartCore {
  const factory _DartCore({@required String type, @required String value}) =
      _$_DartCore;

  factory _DartCore.fromJson(Map<String, dynamic> json) = _$_DartCore.fromJson;

  @override
  String get type;
  String get value;
  @override
  _$DartCoreCopyWith<_DartCore> get copyWith;
}

/// @nodoc
abstract class $DartPropertyCopyWith<$Res> implements $DartCoreCopyWith<$Res> {
  factory $DartPropertyCopyWith(
          DartProperty value, $Res Function(DartProperty) then) =
      _$DartPropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String key,
      String type,
      DartCore value,
      bool isOptional,
      bool isNamed,
      bool isPositional,
      bool isRequired,
      bool isRequiredPositional,
      bool isSynthetic,
      bool isRequiredNamed,
      bool isOptionalNamed,
      int position});

  $DartCoreCopyWith<$Res> get value;
}

/// @nodoc
class _$DartPropertyCopyWithImpl<$Res> extends _$DartCoreCopyWithImpl<$Res>
    implements $DartPropertyCopyWith<$Res> {
  _$DartPropertyCopyWithImpl(
      DartProperty _value, $Res Function(DartProperty) _then)
      : super(_value, (v) => _then(v as DartProperty));

  @override
  DartProperty get _value => super._value as DartProperty;

  @override
  $Res call({
    Object name = freezed,
    Object key = freezed,
    Object type = freezed,
    Object value = freezed,
    Object isOptional = freezed,
    Object isNamed = freezed,
    Object isPositional = freezed,
    Object isRequired = freezed,
    Object isRequiredPositional = freezed,
    Object isSynthetic = freezed,
    Object isRequiredNamed = freezed,
    Object isOptionalNamed = freezed,
    Object position = freezed,
  }) {
    return _then(DartProperty(
      name: name == freezed ? _value.name : name as String,
      key: key == freezed ? _value.key : key as String,
      type: type == freezed ? _value.type : type as String,
      value: value == freezed ? _value.value : value as DartCore,
      isOptional:
          isOptional == freezed ? _value.isOptional : isOptional as bool,
      isNamed: isNamed == freezed ? _value.isNamed : isNamed as bool,
      isPositional:
          isPositional == freezed ? _value.isPositional : isPositional as bool,
      isRequired:
          isRequired == freezed ? _value.isRequired : isRequired as bool,
      isRequiredPositional: isRequiredPositional == freezed
          ? _value.isRequiredPositional
          : isRequiredPositional as bool,
      isSynthetic:
          isSynthetic == freezed ? _value.isSynthetic : isSynthetic as bool,
      isRequiredNamed: isRequiredNamed == freezed
          ? _value.isRequiredNamed
          : isRequiredNamed as bool,
      isOptionalNamed: isOptionalNamed == freezed
          ? _value.isOptionalNamed
          : isOptionalNamed as bool,
      position: position == freezed ? _value.position : position as int,
    ));
  }

  @override
  $DartCoreCopyWith<$Res> get value {
    if (_value.value == null) {
      return null;
    }
    return $DartCoreCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$DartProperty implements DartProperty {
  const _$DartProperty(
      {@required this.name,
      this.key,
      @required this.type,
      this.value,
      this.isOptional = true,
      this.isNamed = false,
      this.isPositional = false,
      this.isRequired = false,
      this.isRequiredPositional = false,
      this.isSynthetic = false,
      this.isRequiredNamed = false,
      this.isOptionalNamed = false,
      this.position})
      : assert(name != null),
        assert(type != null),
        assert(isOptional != null),
        assert(isNamed != null),
        assert(isPositional != null),
        assert(isRequired != null),
        assert(isRequiredPositional != null),
        assert(isSynthetic != null),
        assert(isRequiredNamed != null),
        assert(isOptionalNamed != null);

  factory _$DartProperty.fromJson(Map<String, dynamic> json) =>
      _$_$DartPropertyFromJson(json);

  @override
  final String name;
  @override
  final String key;
  @override
  final String type;
  @override
  final DartCore value;
  @JsonKey(defaultValue: true)
  @override
  final bool isOptional;
  @JsonKey(defaultValue: false)
  @override
  final bool isNamed;
  @JsonKey(defaultValue: false)
  @override
  final bool isPositional;
  @JsonKey(defaultValue: false)
  @override
  final bool isRequired;
  @JsonKey(defaultValue: false)
  @override
  final bool isRequiredPositional;
  @JsonKey(defaultValue: false)
  @override
  final bool isSynthetic;
  @JsonKey(defaultValue: false)
  @override
  final bool isRequiredNamed;
  @JsonKey(defaultValue: false)
  @override
  final bool isOptionalNamed;
  @override
  final int position;

  @override
  String toString() {
    return 'DartCore.property(name: $name, key: $key, type: $type, value: $value, isOptional: $isOptional, isNamed: $isNamed, isPositional: $isPositional, isRequired: $isRequired, isRequiredPositional: $isRequiredPositional, isSynthetic: $isSynthetic, isRequiredNamed: $isRequiredNamed, isOptionalNamed: $isOptionalNamed, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DartProperty &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.isOptional, isOptional) ||
                const DeepCollectionEquality()
                    .equals(other.isOptional, isOptional)) &&
            (identical(other.isNamed, isNamed) ||
                const DeepCollectionEquality()
                    .equals(other.isNamed, isNamed)) &&
            (identical(other.isPositional, isPositional) ||
                const DeepCollectionEquality()
                    .equals(other.isPositional, isPositional)) &&
            (identical(other.isRequired, isRequired) ||
                const DeepCollectionEquality()
                    .equals(other.isRequired, isRequired)) &&
            (identical(other.isRequiredPositional, isRequiredPositional) ||
                const DeepCollectionEquality().equals(
                    other.isRequiredPositional, isRequiredPositional)) &&
            (identical(other.isSynthetic, isSynthetic) ||
                const DeepCollectionEquality()
                    .equals(other.isSynthetic, isSynthetic)) &&
            (identical(other.isRequiredNamed, isRequiredNamed) ||
                const DeepCollectionEquality()
                    .equals(other.isRequiredNamed, isRequiredNamed)) &&
            (identical(other.isOptionalNamed, isOptionalNamed) ||
                const DeepCollectionEquality()
                    .equals(other.isOptionalNamed, isOptionalNamed)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(isOptional) ^
      const DeepCollectionEquality().hash(isNamed) ^
      const DeepCollectionEquality().hash(isPositional) ^
      const DeepCollectionEquality().hash(isRequired) ^
      const DeepCollectionEquality().hash(isRequiredPositional) ^
      const DeepCollectionEquality().hash(isSynthetic) ^
      const DeepCollectionEquality().hash(isRequiredNamed) ^
      const DeepCollectionEquality().hash(isOptionalNamed) ^
      const DeepCollectionEquality().hash(position);

  @override
  $DartPropertyCopyWith<DartProperty> get copyWith =>
      _$DartPropertyCopyWithImpl<DartProperty>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String type, String value), {
    @required
        Result property(
            String name,
            String key,
            String type,
            DartCore value,
            bool isOptional,
            bool isNamed,
            bool isPositional,
            bool isRequired,
            bool isRequiredPositional,
            bool isSynthetic,
            bool isRequiredNamed,
            bool isOptionalNamed,
            int position),
    @required
        Result field(String name, String type, DartCore value, bool isFinal,
            bool isConst, bool isStatic),
  }) {
    assert($default != null);
    assert(property != null);
    assert(field != null);
    return property(
        name,
        key,
        type,
        value,
        isOptional,
        isNamed,
        isPositional,
        isRequired,
        isRequiredPositional,
        isSynthetic,
        isRequiredNamed,
        isOptionalNamed,
        position);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String type, String value), {
    Result property(
        String name,
        String key,
        String type,
        DartCore value,
        bool isOptional,
        bool isNamed,
        bool isPositional,
        bool isRequired,
        bool isRequiredPositional,
        bool isSynthetic,
        bool isRequiredNamed,
        bool isOptionalNamed,
        int position),
    Result field(String name, String type, DartCore value, bool isFinal,
        bool isConst, bool isStatic),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (property != null) {
      return property(
          name,
          key,
          type,
          value,
          isOptional,
          isNamed,
          isPositional,
          isRequired,
          isRequiredPositional,
          isSynthetic,
          isRequiredNamed,
          isOptionalNamed,
          position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_DartCore value), {
    @required Result property(DartProperty value),
    @required Result field(DartField value),
  }) {
    assert($default != null);
    assert(property != null);
    assert(field != null);
    return property(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_DartCore value), {
    Result property(DartProperty value),
    Result field(DartField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (property != null) {
      return property(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DartPropertyToJson(this)..['runtimeType'] = 'property';
  }
}

abstract class DartProperty implements DartCore {
  const factory DartProperty(
      {@required String name,
      String key,
      @required String type,
      DartCore value,
      bool isOptional,
      bool isNamed,
      bool isPositional,
      bool isRequired,
      bool isRequiredPositional,
      bool isSynthetic,
      bool isRequiredNamed,
      bool isOptionalNamed,
      int position}) = _$DartProperty;

  factory DartProperty.fromJson(Map<String, dynamic> json) =
      _$DartProperty.fromJson;

  String get name;
  String get key;
  @override
  String get type;
  DartCore get value;
  bool get isOptional;
  bool get isNamed;
  bool get isPositional;
  bool get isRequired;
  bool get isRequiredPositional;
  bool get isSynthetic;
  bool get isRequiredNamed;
  bool get isOptionalNamed;
  int get position;
  @override
  $DartPropertyCopyWith<DartProperty> get copyWith;
}

/// @nodoc
abstract class $DartFieldCopyWith<$Res> implements $DartCoreCopyWith<$Res> {
  factory $DartFieldCopyWith(DartField value, $Res Function(DartField) then) =
      _$DartFieldCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String type,
      DartCore value,
      bool isFinal,
      bool isConst,
      bool isStatic});

  $DartCoreCopyWith<$Res> get value;
}

/// @nodoc
class _$DartFieldCopyWithImpl<$Res> extends _$DartCoreCopyWithImpl<$Res>
    implements $DartFieldCopyWith<$Res> {
  _$DartFieldCopyWithImpl(DartField _value, $Res Function(DartField) _then)
      : super(_value, (v) => _then(v as DartField));

  @override
  DartField get _value => super._value as DartField;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object value = freezed,
    Object isFinal = freezed,
    Object isConst = freezed,
    Object isStatic = freezed,
  }) {
    return _then(DartField(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      value: value == freezed ? _value.value : value as DartCore,
      isFinal: isFinal == freezed ? _value.isFinal : isFinal as bool,
      isConst: isConst == freezed ? _value.isConst : isConst as bool,
      isStatic: isStatic == freezed ? _value.isStatic : isStatic as bool,
    ));
  }

  @override
  $DartCoreCopyWith<$Res> get value {
    if (_value.value == null) {
      return null;
    }
    return $DartCoreCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$DartField implements DartField {
  const _$DartField(
      {@required this.name,
      @required this.type,
      this.value,
      this.isFinal = false,
      this.isConst = false,
      this.isStatic = false})
      : assert(name != null),
        assert(type != null),
        assert(isFinal != null),
        assert(isConst != null),
        assert(isStatic != null);

  factory _$DartField.fromJson(Map<String, dynamic> json) =>
      _$_$DartFieldFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final DartCore value;
  @JsonKey(defaultValue: false)
  @override
  final bool isFinal;
  @JsonKey(defaultValue: false)
  @override
  final bool isConst;
  @JsonKey(defaultValue: false)
  @override
  final bool isStatic;

  @override
  String toString() {
    return 'DartCore.field(name: $name, type: $type, value: $value, isFinal: $isFinal, isConst: $isConst, isStatic: $isStatic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DartField &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.isFinal, isFinal) ||
                const DeepCollectionEquality()
                    .equals(other.isFinal, isFinal)) &&
            (identical(other.isConst, isConst) ||
                const DeepCollectionEquality()
                    .equals(other.isConst, isConst)) &&
            (identical(other.isStatic, isStatic) ||
                const DeepCollectionEquality()
                    .equals(other.isStatic, isStatic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(isFinal) ^
      const DeepCollectionEquality().hash(isConst) ^
      const DeepCollectionEquality().hash(isStatic);

  @override
  $DartFieldCopyWith<DartField> get copyWith =>
      _$DartFieldCopyWithImpl<DartField>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String type, String value), {
    @required
        Result property(
            String name,
            String key,
            String type,
            DartCore value,
            bool isOptional,
            bool isNamed,
            bool isPositional,
            bool isRequired,
            bool isRequiredPositional,
            bool isSynthetic,
            bool isRequiredNamed,
            bool isOptionalNamed,
            int position),
    @required
        Result field(String name, String type, DartCore value, bool isFinal,
            bool isConst, bool isStatic),
  }) {
    assert($default != null);
    assert(property != null);
    assert(field != null);
    return field(name, type, value, isFinal, isConst, isStatic);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String type, String value), {
    Result property(
        String name,
        String key,
        String type,
        DartCore value,
        bool isOptional,
        bool isNamed,
        bool isPositional,
        bool isRequired,
        bool isRequiredPositional,
        bool isSynthetic,
        bool isRequiredNamed,
        bool isOptionalNamed,
        int position),
    Result field(String name, String type, DartCore value, bool isFinal,
        bool isConst, bool isStatic),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (field != null) {
      return field(name, type, value, isFinal, isConst, isStatic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_DartCore value), {
    @required Result property(DartProperty value),
    @required Result field(DartField value),
  }) {
    assert($default != null);
    assert(property != null);
    assert(field != null);
    return field(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_DartCore value), {
    Result property(DartProperty value),
    Result field(DartField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (field != null) {
      return field(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DartFieldToJson(this)..['runtimeType'] = 'field';
  }
}

abstract class DartField implements DartCore {
  const factory DartField(
      {@required String name,
      @required String type,
      DartCore value,
      bool isFinal,
      bool isConst,
      bool isStatic}) = _$DartField;

  factory DartField.fromJson(Map<String, dynamic> json) = _$DartField.fromJson;

  String get name;
  @override
  String get type;
  DartCore get value;
  bool get isFinal;
  bool get isConst;
  bool get isStatic;
  @override
  $DartFieldCopyWith<DartField> get copyWith;
}
