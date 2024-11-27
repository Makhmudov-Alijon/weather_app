part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {

  const factory WeatherEvent.getUserLocationWeather() = _GetUserLocationWeather;
  const factory WeatherEvent.searchLocation(Map location) = _SearchLocation;
}
