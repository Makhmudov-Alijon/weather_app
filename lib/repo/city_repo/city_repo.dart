import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/model/city_list_model.dart';

import '../../model/weather_model.dart';


part 'city_repo.g.dart';

@RestApi(baseUrl: "")
abstract class CityRepoClint {
  factory CityRepoClint(Dio dio, {String baseUrl}) = _CityRepoClint;

  @GET("city")
  Future<List<CityListModel>> getSearchCity(
      @Query("name") String name,
      @Query("limit") int limit,
      );

  @GET("city")
  Future<List<CityListModel>> getCity(
      @Query("country") String name,
      @Query("limit") int limit,
      );
}