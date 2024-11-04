import 'package:equatable/equatable.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/clouds.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/coord.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/main.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/rain.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/sys.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/weather.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/wind.dart';

class CurrentCityEntity extends Equatable {
  final Coord? coord;
  final String? base;
  final List<Weather>? weather;
  final Main? main;
  final int? visibility;
  final Wind? wind;
  final Rain? rain;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  const CurrentCityEntity({
    required this.coord,
    required this.base,
    required this.weather,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  @override
  List<Object> get props => [
        coord!,
        base!,
        weather!,
        main!,
        visibility!,
        wind!,
        rain!,
        clouds!,
        dt!,
        sys!,
        timezone!,
        id!,
        name!,
        cod!,
      ];
}
