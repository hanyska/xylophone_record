import 'package:flutter/material.dart';
import 'package:xylophone_recorder/xylophone_page.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: XylophonePage(),
      )
  );
}