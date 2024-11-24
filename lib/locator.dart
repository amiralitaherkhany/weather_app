import 'package:get_it/get_it.dart';
import 'package:weather_app/features/feature_weather/data/datasources/remote/api_provider.dart';
import 'package:weather_app/features/feature_weather/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/features/feature_weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/feature_weather/domain/usecases/get_current_wearher_usecase.dart';
import 'package:weather_app/features/feature_weather/presentation/blocs/home_bloc/home_bloc.dart';

GetIt locator = GetIt.instance;

void setup() async {
  locator.registerSingleton<ApiProvider>(ApiProvider());
  //repositories
  locator.registerSingleton<WeatherRepository>(
      WeatherRepositoryImpl(apiProvider: locator()));
  //usecases
  locator.registerSingleton<GetCurrentWearherUsecase>(
      GetCurrentWearherUsecase(weatherRepository: locator()));
  //blocs
  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}
