part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentWeatherEvent extends HomeEvent {
  final String cityName;
  const GetCurrentWeatherEvent({required this.cityName});
}
