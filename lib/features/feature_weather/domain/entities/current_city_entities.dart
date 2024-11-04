import 'package:equatable/equatable.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/clouds.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/coord.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/main.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/rain.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/sys.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/weather.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/wind.dart';

class CurrentCityEntities extends Equatable {
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
  const CurrentCityEntities({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.rain,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  @override
  List<Object?> get props => [];
}
