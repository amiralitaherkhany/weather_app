import 'package:dio/dio.dart';
import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/features/feature_weather/data/datasources/remote/api_provider.dart';
import 'package:weather_app/features/feature_weather/data/models/current_city_model/current_city_model.dart';
import 'package:weather_app/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_app/features/feature_weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final ApiProvider _apiProvider;

  WeatherRepositoryImpl({required ApiProvider apiProvider})
      : _apiProvider = apiProvider;

  @override
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(
      String cityName) async {
    try {
      Response response = await _apiProvider.callCurrentWeather(cityName);
      if (response.statusCode == 200) {
        return DataSuccess(
          CurrentCityModel.fromJson(response.data).toEntity(),
        );
      } else {
        return DataFailed(
          'Something went wrong with state code ${response.statusCode}',
        );
      }
    } on DioException {
      return DataFailed(
        'Something went wrong',
      );
    } catch (e) {
      return DataFailed(
        'please check your internet connection',
      );
    }
  }
}
