part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {

  const CityState._();
  const factory CityState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<CityListModel> city
}) = _CityState;
}
