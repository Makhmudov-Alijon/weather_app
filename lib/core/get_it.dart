import 'package:get_it/get_it.dart';
import 'package:weather_app/repo/city_repo/city_repo.dart';
import 'package:weather_app/repo/weather_repo/weather_repo.dart';

import '../repo/dio_service/dio_service.dart';

GetIt locator = GetIt.instance;
Future<void> locatorSetUp() async{
  locator.registerSingleton(WeatherRepoClint(DioService.dio,baseUrl: "https://api.weatherapi.com/v1/"));
  locator.registerSingleton(CityRepoClint(DioService.dio,baseUrl: "https://api.api-ninjas.com/v1/"));
}