import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/feature_weather/presentation/blocs/home_bloc/cw_status.dart';
import 'package:weather_app/features/feature_weather/presentation/blocs/home_bloc/home_bloc.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    context
        .read<HomeBloc>()
        .add(const GetCurrentWeatherEvent(cityName: "Tehran"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.cwStatus is CwLoading) {
            return const Center(
              child: Text("loading..."),
            );
          } else if (state.cwStatus is CwError) {
            return Center(
              child: Text((state.cwStatus as CwError).message),
            );
          } else if (state.cwStatus is CwCompleted) {
            return const Center(
              child: Text("completed"),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
