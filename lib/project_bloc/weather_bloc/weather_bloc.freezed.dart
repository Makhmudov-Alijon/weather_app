// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserLocationWeather,
    required TResult Function(Map<dynamic, dynamic> location) searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserLocationWeather,
    TResult? Function(Map<dynamic, dynamic> location)? searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserLocationWeather,
    TResult Function(Map<dynamic, dynamic> location)? searchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserLocationWeather value)
        getUserLocationWeather,
    required TResult Function(_SearchLocation value) searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserLocationWeather value)? getUserLocationWeather,
    TResult? Function(_SearchLocation value)? searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserLocationWeather value)? getUserLocationWeather,
    TResult Function(_SearchLocation value)? searchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserLocationWeatherImplCopyWith<$Res> {
  factory _$$GetUserLocationWeatherImplCopyWith(
          _$GetUserLocationWeatherImpl value,
          $Res Function(_$GetUserLocationWeatherImpl) then) =
      __$$GetUserLocationWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserLocationWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetUserLocationWeatherImpl>
    implements _$$GetUserLocationWeatherImplCopyWith<$Res> {
  __$$GetUserLocationWeatherImplCopyWithImpl(
      _$GetUserLocationWeatherImpl _value,
      $Res Function(_$GetUserLocationWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserLocationWeatherImpl implements _GetUserLocationWeather {
  const _$GetUserLocationWeatherImpl();

  @override
  String toString() {
    return 'WeatherEvent.getUserLocationWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLocationWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserLocationWeather,
    required TResult Function(Map<dynamic, dynamic> location) searchLocation,
  }) {
    return getUserLocationWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserLocationWeather,
    TResult? Function(Map<dynamic, dynamic> location)? searchLocation,
  }) {
    return getUserLocationWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserLocationWeather,
    TResult Function(Map<dynamic, dynamic> location)? searchLocation,
    required TResult orElse(),
  }) {
    if (getUserLocationWeather != null) {
      return getUserLocationWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserLocationWeather value)
        getUserLocationWeather,
    required TResult Function(_SearchLocation value) searchLocation,
  }) {
    return getUserLocationWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserLocationWeather value)? getUserLocationWeather,
    TResult? Function(_SearchLocation value)? searchLocation,
  }) {
    return getUserLocationWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserLocationWeather value)? getUserLocationWeather,
    TResult Function(_SearchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (getUserLocationWeather != null) {
      return getUserLocationWeather(this);
    }
    return orElse();
  }
}

abstract class _GetUserLocationWeather implements WeatherEvent {
  const factory _GetUserLocationWeather() = _$GetUserLocationWeatherImpl;
}

/// @nodoc
abstract class _$$SearchLocationImplCopyWith<$Res> {
  factory _$$SearchLocationImplCopyWith(_$SearchLocationImpl value,
          $Res Function(_$SearchLocationImpl) then) =
      __$$SearchLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> location});
}

/// @nodoc
class __$$SearchLocationImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$SearchLocationImpl>
    implements _$$SearchLocationImplCopyWith<$Res> {
  __$$SearchLocationImplCopyWithImpl(
      _$SearchLocationImpl _value, $Res Function(_$SearchLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SearchLocationImpl(
      null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$SearchLocationImpl implements _SearchLocation {
  const _$SearchLocationImpl(final Map<dynamic, dynamic> location)
      : _location = location;

  final Map<dynamic, dynamic> _location;
  @override
  Map<dynamic, dynamic> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  String toString() {
    return 'WeatherEvent.searchLocation(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationImpl &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_location));

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      __$$SearchLocationImplCopyWithImpl<_$SearchLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserLocationWeather,
    required TResult Function(Map<dynamic, dynamic> location) searchLocation,
  }) {
    return searchLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserLocationWeather,
    TResult? Function(Map<dynamic, dynamic> location)? searchLocation,
  }) {
    return searchLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserLocationWeather,
    TResult Function(Map<dynamic, dynamic> location)? searchLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserLocationWeather value)
        getUserLocationWeather,
    required TResult Function(_SearchLocation value) searchLocation,
  }) {
    return searchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserLocationWeather value)? getUserLocationWeather,
    TResult? Function(_SearchLocation value)? searchLocation,
  }) {
    return searchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserLocationWeather value)? getUserLocationWeather,
    TResult Function(_SearchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(this);
    }
    return orElse();
  }
}

abstract class _SearchLocation implements WeatherEvent {
  const factory _SearchLocation(final Map<dynamic, dynamic> location) =
      _$SearchLocationImpl;

  Map<dynamic, dynamic> get location;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  WeatherModel? get weatherData => throw _privateConstructorUsedError;
  List<dynamic> get country => throw _privateConstructorUsedError;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      WeatherModel? weatherData,
      List<dynamic> country});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? weatherData = freezed,
    Object? country = null,
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
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      WeatherModel? weatherData,
      List<dynamic> country});
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? weatherData = freezed,
    Object? country = null,
  }) {
    return _then(_$WeatherStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      country: null == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl extends _WeatherState {
  const _$WeatherStateImpl(
      {this.isLoading = false,
      this.isError = false,
      this.weatherData = null,
      final List<dynamic> country = const []})
      : _country = country,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final WeatherModel? weatherData;
  final List<dynamic> _country;
  @override
  @JsonKey()
  List<dynamic> get country {
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_country);
  }

  @override
  String toString() {
    return 'WeatherState(isLoading: $isLoading, isError: $isError, weatherData: $weatherData, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData) &&
            const DeepCollectionEquality().equals(other._country, _country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, weatherData,
      const DeepCollectionEquality().hash(_country));

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState extends WeatherState {
  const factory _WeatherState(
      {final bool isLoading,
      final bool isError,
      final WeatherModel? weatherData,
      final List<dynamic> country}) = _$WeatherStateImpl;
  const _WeatherState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  WeatherModel? get weatherData;
  @override
  List<dynamic> get country;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
