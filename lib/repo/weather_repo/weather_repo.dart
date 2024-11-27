import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/weather_model.dart';


part 'weather_repo.g.dart';

@RestApi(baseUrl: "")
abstract class WeatherRepoClint {
  factory WeatherRepoClint(Dio dio, {String baseUrl}) = _WeatherRepoClint;

  @GET("current.json")
  Future<WeatherModel> getCurrentWeather(
    @Query("key") String key,
    @Query("q") String q,
  );
}