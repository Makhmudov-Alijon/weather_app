// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityListModel _$CityListModelFromJson(Map<String, dynamic> json) =>
    CityListModel(
      name: json['name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      country: json['country'] as String?,
      population: (json['population'] as num?)?.toInt(),
      region: json['region'] as String?,
      isCapital: json['is_capital'] as bool?,
    );

Map<String, dynamic> _$CityListModelToJson(CityListModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'population': instance.population,
      'region': instance.region,
      'is_capital': instance.isCapital,
    };
