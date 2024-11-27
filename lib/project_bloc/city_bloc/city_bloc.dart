import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/get_it.dart';
import 'package:weather_app/model/city_list_model.dart';
import 'package:weather_app/repo/city_repo/city_repo.dart';

part 'city_event.dart';
part 'city_state.dart';
part 'city_bloc.freezed.dart';

class CityBloc extends Bloc<CityEvent, CityState> {

  CityRepoClint cityRepoClint = locator.get<CityRepoClint>();
  CityBloc() : super(const CityState()) {
    on<_SearchCityEvent>(_searchCity);
    on<_InitialCityEvent>(_initialCity);
  }

  Future<void> _searchCity(_SearchCityEvent event, Emitter<CityState> emit) async {
    emit(state.copyWith(isLoading: true,city:[]));
    try {

      List<CityListModel> city = await cityRepoClint.getSearchCity(event.search,30);
      emit(state.copyWith(city: city, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true));
    }
  }

  Future<void> _initialCity(_InitialCityEvent event, Emitter<CityState> emit) async {
    emit(state.copyWith(isLoading: true,city:[]));
    try {

      List<CityListModel> city = await cityRepoClint.getCity("UZ",30);
      emit(state.copyWith(city: city, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true));
    }
  }

}
