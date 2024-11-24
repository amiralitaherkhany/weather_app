import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/presentation/pages/main_wrapper.dart';
import 'package:weather_app/features/feature_weather/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:weather_app/locator.dart';

void main() async {
  await setup();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (_) => locator(),
          ),
        ],
        child: const MainWrapper(),
      ),
    ),
  );
}
