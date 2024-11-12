import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/features/feature_weather/domain/usecases/get_current_wearher_usecase.dart';
import 'package:weather_app/features/feature_weather/presentation/blocs/home_bloc/cw_status.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCurrentWearherUsecase getCurrentWearherUsecase;
  HomeBloc(this.getCurrentWearherUsecase)
      : super(HomeState(cwStatus: CwLoading())) {
    on<GetCurrentWeatherEvent>((event, emit) async {
      emit(state.copyWith(newCwStatus: CwLoading()));
      DataState dataState = await getCurrentWearherUsecase(event.cityName);

      if (dataState is DataSuccess) {
        emit(state.copyWith(
            newCwStatus: CwCompleted(currentCityEntity: dataState.data)));
      }
      if (dataState is DataFailed) {
        emit(state.copyWith(newCwStatus: CwError(message: dataState.error!)));
      }
    });
  }
}
