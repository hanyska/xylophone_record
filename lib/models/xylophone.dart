import 'package:flutter/material.dart';

class Xylophone {
  final int soundNumber;
  final String soundText;
  final Color soundColor;

  Xylophone({
    this.soundNumber,
    this.soundText,
    this.soundColor
  });

  get soundPath => 'assets/sounds/$soundNumber.wav';
}