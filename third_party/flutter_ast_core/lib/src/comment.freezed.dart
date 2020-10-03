// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DartComment _$DartCommentFromJson(Map<String, dynamic> json) {
  return _DartComment.fromJson(json);
}

/// @nodoc
class _$DartCommentTearOff {
  const _$DartCommentTearOff();

// ignore: unused_element
  _DartComment call({List<String> lines = const []}) {
    return _DartComment(
      lines: lines,
    );
  }

// ignore: unused_element
  DartComment fromJson(Map<String, Object> json) {
    return DartComment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DartComment = _$DartCommentTearOff();

/// @nodoc
mixin _$DartComment {
  List<String> get lines;

  Map<String, dynamic> toJson();
  $DartCommentCopyWith<DartComment> get copyWith;
}

/// @nodoc
abstract class $DartCommentCopyWith<$Res> {
  factory $DartCommentCopyWith(
          DartComment value, $Res Function(DartComment) then) =
      _$DartCommentCopyWithImpl<$Res>;
  $Res call({List<String> lines});
}

/// @nodoc
class _$DartCommentCopyWithImpl<$Res> implements $DartCommentCopyWith<$Res> {
  _$DartCommentCopyWithImpl(this._value, this._then);

  final DartComment _value;
  // ignore: unused_field
  final $Res Function(DartComment) _then;

  @override
  $Res call({
    Object lines = freezed,
  }) {
    return _then(_value.copyWith(
      lines: lines == freezed ? _value.lines : lines as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DartCommentCopyWith<$Res>
    implements $DartCommentCopyWith<$Res> {
  factory _$DartCommentCopyWith(
          _DartComment value, $Res Function(_DartComment) then) =
      __$DartCommentCopyWithImpl<$Res>;
  @override
  $Res call({List<String> lines});
}

/// @nodoc
class __$DartCommentCopyWithImpl<$Res> extends _$DartCommentCopyWithImpl<$Res>
    implements _$DartCommentCopyWith<$Res> {
  __$DartCommentCopyWithImpl(
      _DartComment _value, $Res Function(_DartComment) _then)
      : super(_value, (v) => _then(v as _DartComment));

  @override
  _DartComment get _value => super._value as _DartComment;

  @override
  $Res call({
    Object lines = freezed,
  }) {
    return _then(_DartComment(
      lines: lines == freezed ? _value.lines : lines as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DartComment implements _DartComment {
  const _$_DartComment({this.lines = const []}) : assert(lines != null);

  factory _$_DartComment.fromJson(Map<String, dynamic> json) =>
      _$_$_DartCommentFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<String> lines;

  @override
  String toString() {
    return 'DartComment(lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartComment &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lines);

  @override
  _$DartCommentCopyWith<_DartComment> get copyWith =>
      __$DartCommentCopyWithImpl<_DartComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartCommentToJson(this);
  }
}

abstract class _DartComment implements DartComment {
  const factory _DartComment({List<String> lines}) = _$_DartComment;

  factory _DartComment.fromJson(Map<String, dynamic> json) =
      _$_DartComment.fromJson;

  @override
  List<String> get lines;
  @override
  _$DartCommentCopyWith<_DartComment> get copyWith;
}
