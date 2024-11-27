// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'weather_model.g.dart';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@JsonSerializable()
class WeatherModel {
  @JsonKey(name: "location")
  final Location? location;
  @JsonKey(name: "current")
  final Current? current;

  WeatherModel({
    this.location,
    this.current,
  });

  WeatherModel copyWith({
    Location? location,
    Current? current,
  }) =>
      WeatherModel(
        location: location ?? this.location,
        current: current ?? this.current,
      );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
class Current {
  @JsonKey(name: "last_updated_epoch")
  final int? lastUpdatedEpoch;
  @JsonKey(name: "last_updated")
  final String? lastUpdated;
  @JsonKey(name: "temp_c")
  final double? tempC;
  @JsonKey(name: "temp_f")
  final double? tempF;
  @JsonKey(name: "is_day")
  final int? isDay;
  @JsonKey(name: "condition")
  final Condition? condition;
  @JsonKey(name: "wind_mph")
  final double? windMph;
  @JsonKey(name: "wind_kph")
  final double? windKph;
  @JsonKey(name: "wind_degree")
  final int? windDegree;
  @JsonKey(name: "wind_dir")
  final String? windDir;
  @JsonKey(name: "pressure_mb")
  final int? pressureMb;
  @JsonKey(name: "pressure_in")
  final double? pressureIn;
  @JsonKey(name: "precip_mm")
  final int? precipMm;
  @JsonKey(name: "precip_in")
  final int? precipIn;
  @JsonKey(name: "humidity")
  final int? humidity;
  @JsonKey(name: "cloud")
  final int? cloud;
  @JsonKey(name: "vis_km")
  final int? visKm;
  @JsonKey(name: "vis_miles")
  final int? visMiles;
  @JsonKey(name: "uv")
  final double? uv;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.visKm,
    this.visMiles,
    this.uv,
  });

  Current copyWith({
    int? lastUpdatedEpoch,
    String? lastUpdated,
    double? tempC,
    double? tempF,
    int? isDay,
    Condition? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    int? pressureMb,
    double? pressureIn,
    int? precipMm,
    int? precipIn,
    int? humidity,
    int? cloud,
    int? visKm,
    int? visMiles,
    double? uv,
  }) =>
      Current(
        lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        tempC: tempC ?? this.tempC,
        tempF: tempF ?? this.tempF,
        isDay: isDay ?? this.isDay,
        condition: condition ?? this.condition,
        windMph: windMph ?? this.windMph,
        windKph: windKph ?? this.windKph,
        windDegree: windDegree ?? this.windDegree,
        windDir: windDir ?? this.windDir,
        pressureMb: pressureMb ?? this.pressureMb,
        pressureIn: pressureIn ?? this.pressureIn,
        precipMm: precipMm ?? this.precipMm,
        precipIn: precipIn ?? this.precipIn,
        humidity: humidity ?? this.humidity,
        cloud: cloud ?? this.cloud,
        visKm: visKm ?? this.visKm,
        visMiles: visMiles ?? this.visMiles,
        uv: uv ?? this.uv,
      );

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Condition {
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "code")
  final int? code;

  Condition({
    this.text,
    this.icon,
    this.code,
  });

  Condition copyWith({
    String? text,
    String? icon,
    int? code,
  }) =>
      Condition(
        text: text ?? this.text,
        icon: icon ?? this.icon,
        code: code ?? this.code,
      );

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "region")
  final String? region;
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "lat")
  final double? lat;
  @JsonKey(name: "lon")
  final double? lon;
  @JsonKey(name: "tz_id")
  final String? tzId;
  @JsonKey(name: "localtime_epoch")
  final int? localtimeEpoch;
  @JsonKey(name: "localtime")
  final String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  Location copyWith({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  }) =>
      Location(
        name: name ?? this.name,
        region: region ?? this.region,
        country: country ?? this.country,
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
        tzId: tzId ?? this.tzId,
        localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
        localtime: localtime ?? this.localtime,
      );

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
