import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tca_app_v2/pages/tca_home.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 81, 124, 254),
  ),
);

void main() {
  runApp(
    MaterialApp(
      theme: theme,
      home: const TcaHome(),
    ),
  );
}
