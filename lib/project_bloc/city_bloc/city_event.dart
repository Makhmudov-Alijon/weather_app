part of 'city_bloc.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.searchCity(String search) = _SearchCityEvent;

  const factory CityEvent.initialCity() = _InitialCityEvent;
}
