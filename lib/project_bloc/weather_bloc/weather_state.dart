part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const WeatherState._();
  const factory WeatherState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(null) WeatherModel? weatherData,
    @Default([]) List<dynamic> country,
}) = _WeatherState;
}
