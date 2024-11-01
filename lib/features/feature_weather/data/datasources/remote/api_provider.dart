import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/constants.dart';

class ApiProvider {
  final Dio _dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  final String apiKey = Constants.apiKey;
  Future<Response> callCurrentWeather(String cityName) async {
    Response response = await _dio.get(
      '/data/2.5/weather',
      queryParameters: {
        'q': cityName,
        'appid': apiKey,
        'units': 'metric',
      },
    );
    debugPrint(response.toString());
    return response;
  }
}
