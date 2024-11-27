// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchCity,
    required TResult Function() initialCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchCity,
    TResult? Function()? initialCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchCity,
    TResult Function()? initialCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_InitialCityEvent value) initialCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_InitialCityEvent value)? initialCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_InitialCityEvent value)? initialCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res, CityEvent>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchCityEventImplCopyWith<$Res> {
  factory _$$SearchCityEventImplCopyWith(_$SearchCityEventImpl value,
          $Res Function(_$SearchCityEventImpl) then) =
      __$$SearchCityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchCityEventImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$SearchCityEventImpl>
    implements _$$SearchCityEventImplCopyWith<$Res> {
  __$$SearchCityEventImplCopyWithImpl(
      _$SearchCityEventImpl _value, $Res Function(_$SearchCityEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchCityEventImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCityEventImpl implements _SearchCityEvent {
  const _$SearchCityEventImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'CityEvent.searchCity(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCityEventImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  /// Create a copy of CityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCityEventImplCopyWith<_$SearchCityEventImpl> get copyWith =>
      __$$SearchCityEventImplCopyWithImpl<_$SearchCityEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchCity,
    required TResult Function() initialCity,
  }) {
    return searchCity(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchCity,
    TResult? Function()? initialCity,
  }) {
    return searchCity?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchCity,
    TResult Function()? initialCity,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_InitialCityEvent value) initialCity,
  }) {
    return searchCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_InitialCityEvent value)? initialCity,
  }) {
    return searchCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_InitialCityEvent value)? initialCity,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(this);
    }
    return orElse();
  }
}

abstract class _SearchCityEvent implements CityEvent {
  const factory _SearchCityEvent(final String search) = _$SearchCityEventImpl;

  String get search;

  /// Create a copy of CityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCityEventImplCopyWith<_$SearchCityEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCityEventImplCopyWith<$Res> {
  factory _$$InitialCityEventImplCopyWith(_$InitialCityEventImpl value,
          $Res Function(_$InitialCityEventImpl) then) =
      __$$InitialCityEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCityEventImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$InitialCityEventImpl>
    implements _$$InitialCityEventImplCopyWith<$Res> {
  __$$InitialCityEventImplCopyWithImpl(_$InitialCityEventImpl _value,
      $Res Function(_$InitialCityEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialCityEventImpl implements _InitialCityEvent {
  const _$InitialCityEventImpl();

  @override
  String toString() {
    return 'CityEvent.initialCity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCityEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchCity,
    required TResult Function() initialCity,
  }) {
    return initialCity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchCity,
    TResult? Function()? initialCity,
  }) {
    return initialCity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchCity,
    TResult Function()? initialCity,
    required TResult orElse(),
  }) {
    if (initialCity != null) {
      return initialCity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_InitialCityEvent value) initialCity,
  }) {
    return initialCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_InitialCityEvent value)? initialCity,
  }) {
    return initialCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_InitialCityEvent value)? initialCity,
    required TResult orElse(),
  }) {
    if (initialCity != null) {
      return initialCity(this);
    }
    return orElse();
  }
}

abstract class _InitialCityEvent implements CityEvent {
  const factory _InitialCityEvent() = _$InitialCityEventImpl;
}

/// @nodoc
mixin _$CityState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<CityListModel> get city => throw _privateConstructorUsedError;

  /// Create a copy of CityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityStateCopyWith<CityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) =
      _$CityStateCopyWithImpl<$Res, CityState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<CityListModel> city});
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as List<CityListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityStateImplCopyWith<$Res>
    implements $CityStateCopyWith<$Res> {
  factory _$$CityStateImplCopyWith(
          _$CityStateImpl value, $Res Function(_$CityStateImpl) then) =
      __$$CityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<CityListModel> city});
}

/// @nodoc
class __$$CityStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityStateImpl>
    implements _$$CityStateImplCopyWith<$Res> {
  __$$CityStateImplCopyWithImpl(
      _$CityStateImpl _value, $Res Function(_$CityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? city = null,
  }) {
    return _then(_$CityStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _value._city
          : city // ignore: cast_nullable_to_non_nullable
              as List<CityListModel>,
    ));
  }
}

/// @nodoc

class _$CityStateImpl extends _CityState {
  const _$CityStateImpl(
      {this.isLoading = false,
      this.isError = false,
      final List<CityListModel> city = const []})
      : _city = city,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  final List<CityListModel> _city;
  @override
  @JsonKey()
  List<CityListModel> get city {
    if (_city is EqualUnmodifiableListView) return _city;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_city);
  }

  @override
  String toString() {
    return 'CityState(isLoading: $isLoading, isError: $isError, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._city, _city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_city));

  /// Create a copy of CityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      __$$CityStateImplCopyWithImpl<_$CityStateImpl>(this, _$identity);
}

abstract class _CityState extends CityState {
  const factory _CityState(
      {final bool isLoading,
      final bool isError,
      final List<CityListModel> city}) = _$CityStateImpl;
  const _CityState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<CityListModel> get city;

  /// Create a copy of CityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
