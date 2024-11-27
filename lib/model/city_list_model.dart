// To parse this JSON data, do
//
//     final cityListModel = cityListModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'city_list_model.g.dart';

List<CityListModel> cityListModelFromJson(String str) => List<CityListModel>.from(json.decode(str).map((x) => CityListModel.fromJson(x)));

String cityListModelToJson(List<CityListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class CityListModel {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "latitude")
  final double? latitude;
  @JsonKey(name: "longitude")
  final double? longitude;
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "population")
  final int? population;
  @JsonKey(name: "region")
  final String? region;
  @JsonKey(name: "is_capital")
  final bool? isCapital;

  CityListModel({
    this.name,
    this.latitude,
    this.longitude,
    this.country,
    this.population,
    this.region,
    this.isCapital,
  });

  CityListModel copyWith({
    String? name,
    double? latitude,
    double? longitude,
    String? country,
    int? population,
    String? region,
    bool? isCapital,
  }) =>
      CityListModel(
        name: name ?? this.name,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        country: country ?? this.country,
        population: population ?? this.population,
        region: region ?? this.region,
        isCapital: isCapital ?? this.isCapital,
      );

  factory CityListModel.fromJson(Map<String, dynamic> json) => _$CityListModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityListModelToJson(this);
}
