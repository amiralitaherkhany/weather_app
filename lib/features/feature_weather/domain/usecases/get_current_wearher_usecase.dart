import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/core/usecases/use_case.dart';
import 'package:weather_app/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_app/features/feature_weather/domain/repositories/weather_repository.dart';

class GetCurrentWearherUsecase
    implements UseCase<DataState<CurrentCityEntity>, String> {
  final WeatherRepository _weatherRepository;

  GetCurrentWearherUsecase({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository;

  @override
  Future<DataState<CurrentCityEntity>> call(String cityName) {
    //if we name a methode of class , call! we can call this methode just by adding () in front of object of class
    return _weatherRepository.fetchCurrentWeatherData(cityName);
  }
}
