import 'package:flutter/material.dart';
import 'package:weather_app/core/presentation/pages/main_wrapper.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainWrapper(),
    ),
  );
}
