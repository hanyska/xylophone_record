import 'package:flutter/material.dart';

class Xylophone {
  final int soundNumber;
  final String soundText;
  final Color soundColor;
  String _soundPath;

  Xylophone({
    this.soundNumber,
    this.soundText,
    this.soundColor
  });

  get soundPath => this._soundPath;

  set soundPath(int soundNumber) {
    this._soundPath = 'assets/sounds/$soundNumber.wav';
  }
}