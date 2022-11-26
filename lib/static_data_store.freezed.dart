// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'static_data_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaticDataStore {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaticDataStoreCopyWith<StaticDataStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticDataStoreCopyWith<$Res> {
  factory $StaticDataStoreCopyWith(
          StaticDataStore value, $Res Function(StaticDataStore) then) =
      _$StaticDataStoreCopyWithImpl<$Res, StaticDataStore>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$StaticDataStoreCopyWithImpl<$Res, $Val extends StaticDataStore>
    implements $StaticDataStoreCopyWith<$Res> {
  _$StaticDataStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaticDataStoreCopyWith<$Res>
    implements $StaticDataStoreCopyWith<$Res> {
  factory _$$_StaticDataStoreCopyWith(
          _$_StaticDataStore value, $Res Function(_$_StaticDataStore) then) =
      __$$_StaticDataStoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_StaticDataStoreCopyWithImpl<$Res>
    extends _$StaticDataStoreCopyWithImpl<$Res, _$_StaticDataStore>
    implements _$$_StaticDataStoreCopyWith<$Res> {
  __$$_StaticDataStoreCopyWithImpl(
      _$_StaticDataStore _value, $Res Function(_$_StaticDataStore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_StaticDataStore(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StaticDataStore implements _StaticDataStore {
  const _$_StaticDataStore({this.value = 0});

  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'StaticDataStore(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaticDataStore &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaticDataStoreCopyWith<_$_StaticDataStore> get copyWith =>
      __$$_StaticDataStoreCopyWithImpl<_$_StaticDataStore>(this, _$identity);
}

abstract class _StaticDataStore implements StaticDataStore {
  const factory _StaticDataStore({final int value}) = _$_StaticDataStore;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_StaticDataStoreCopyWith<_$_StaticDataStore> get copyWith =>
      throw _privateConstructorUsedError;
}
