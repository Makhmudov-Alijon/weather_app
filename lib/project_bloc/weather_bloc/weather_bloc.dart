import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/repo/weather_repo/weather_repo.dart';

import '../../core/get_it.dart';
import '../../generated/assets.dart';
import '../../model/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepoClint weatherRepoClint = locator.get<WeatherRepoClint>();

  WeatherBloc() : super(const WeatherState()) {
    on<_GetUserLocationWeather>(_fetchWeather);
    on<_SearchLocation>(_fetchSelectWeather);
  }

  Future<void> _fetchWeather(_GetUserLocationWeather event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      Position position = await Geolocator.getCurrentPosition();
      WeatherModel weather = await weatherRepoClint.getCurrentWeather("6bb49095801d42dfaaf61012242511", "${position.latitude},${position.longitude}",);
      emit(state.copyWith(weatherData: weather, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true));
    }
  }

  Future<void> _fetchSelectWeather(_SearchLocation event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      WeatherModel weather = await weatherRepoClint.getCurrentWeather("6bb49095801d42dfaaf61012242511", "${event.location["latitude"]},${event.location["longitude"]}",);
      emit(state.copyWith(weatherData: weather, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true));
    }
  }
}
