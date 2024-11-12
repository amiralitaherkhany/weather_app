import 'package:flutter/material.dart';
import 'package:weather_app/features/feature_weather/domain/entities/current_city_entity.dart';

@immutable
abstract class CwStatus {}

class CwCompleted extends CwStatus {
  final CurrentCityEntity currentCityEntity;

  CwCompleted({required this.currentCityEntity});
}

class CwError extends CwStatus {
  final String message;

  CwError({required this.message});
}

class CwLoading extends CwStatus {}
