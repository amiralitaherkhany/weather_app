import 'dart:convert';

import 'package:weather_app/features/feature_weather/domain/entities/current_city_entity.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'rain.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

class CurrentCityModel {
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

  CurrentCityModel({
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
  CurrentCityEntity toEntity() {
    return CurrentCityEntity(
      coord: coord,
      weather: weather,
      base: base,
      main: main,
      visibility: visibility,
      wind: wind,
      rain: rain,
      clouds: clouds,
      dt: dt,
      sys: sys,
      timezone: timezone,
      id: id,
      name: name,
      cod: cod,
    );
  }

  factory CurrentCityModel.fromMap(Map<String, dynamic> data) {
    return CurrentCityModel(
      coord: data['coord'] == null
          ? null
          : Coord.fromMap(data['coord'] as Map<String, dynamic>),
      weather: (data['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromMap(e as Map<String, dynamic>))
          .toList(),
      base: data['base'] as String?,
      main: data['main'] == null
          ? null
          : Main.fromMap(data['main'] as Map<String, dynamic>),
      visibility: data['visibility'] as int?,
      wind: data['wind'] == null
          ? null
          : Wind.fromMap(data['wind'] as Map<String, dynamic>),
      rain: data['rain'] == null
          ? null
          : Rain.fromMap(data['rain'] as Map<String, dynamic>),
      clouds: data['clouds'] == null
          ? null
          : Clouds.fromMap(data['clouds'] as Map<String, dynamic>),
      dt: data['dt'] as int?,
      sys: data['sys'] == null
          ? null
          : Sys.fromMap(data['sys'] as Map<String, dynamic>),
      timezone: data['timezone'] as int?,
      id: data['id'] as int?,
      name: data['name'] as String?,
      cod: data['cod'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'coord': coord?.toMap(),
        'weather': weather?.map((e) => e.toMap()).toList(),
        'base': base,
        'main': main?.toMap(),
        'visibility': visibility,
        'wind': wind?.toMap(),
        'rain': rain?.toMap(),
        'clouds': clouds?.toMap(),
        'dt': dt,
        'sys': sys?.toMap(),
        'timezone': timezone,
        'id': id,
        'name': name,
        'cod': cod,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CurrentCityModel].
  factory CurrentCityModel.fromJson(String data) {
    return CurrentCityModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CurrentCityModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
