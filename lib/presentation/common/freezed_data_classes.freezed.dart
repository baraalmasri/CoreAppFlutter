// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginObjectDataTearOff {
  const _$LoginObjectDataTearOff();

  _LoginObjectData call(String userName, String password) {
    return _LoginObjectData(
      userName,
      password,
    );
  }
}

/// @nodoc
const $LoginObjectData = _$LoginObjectDataTearOff();

/// @nodoc
mixin _$LoginObjectData {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginObjectDataCopyWith<LoginObjectData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObjectDataCopyWith<$Res> {
  factory $LoginObjectDataCopyWith(
          LoginObjectData value, $Res Function(LoginObjectData) then) =
      _$LoginObjectDataCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

/// @nodoc
class _$LoginObjectDataCopyWithImpl<$Res>
    implements $LoginObjectDataCopyWith<$Res> {
  _$LoginObjectDataCopyWithImpl(this._value, this._then);

  final LoginObjectData _value;
  // ignore: unused_field
  final $Res Function(LoginObjectData) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginObjectDataCopyWith<$Res>
    implements $LoginObjectDataCopyWith<$Res> {
  factory _$LoginObjectDataCopyWith(
          _LoginObjectData value, $Res Function(_LoginObjectData) then) =
      __$LoginObjectDataCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password});
}

/// @nodoc
class __$LoginObjectDataCopyWithImpl<$Res>
    extends _$LoginObjectDataCopyWithImpl<$Res>
    implements _$LoginObjectDataCopyWith<$Res> {
  __$LoginObjectDataCopyWithImpl(
      _LoginObjectData _value, $Res Function(_LoginObjectData) _then)
      : super(_value, (v) => _then(v as _LoginObjectData));

  @override
  _LoginObjectData get _value => super._value as _LoginObjectData;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginObjectData(
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginObjectData implements _LoginObjectData {
  _$_LoginObjectData(this.userName, this.password);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginObjectData(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginObjectData &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LoginObjectDataCopyWith<_LoginObjectData> get copyWith =>
      __$LoginObjectDataCopyWithImpl<_LoginObjectData>(this, _$identity);
}

abstract class _LoginObjectData implements LoginObjectData {
  factory _LoginObjectData(String userName, String password) =
      _$_LoginObjectData;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LoginObjectDataCopyWith<_LoginObjectData> get copyWith =>
      throw _privateConstructorUsedError;
}
