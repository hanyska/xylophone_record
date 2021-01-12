import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_recorder/colors.dart';

class XylophoneWidget extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();
  final AppColors color;
  final String text;
  final int soundNumber;

  XylophoneWidget({
    this.color,
    this.text,
    this.soundNumber
  });

  void playSound() {
    assetsAudioPlayer.open(
      Audio("assets/sounds/$soundNumber.wav"),
      autoStart: true,
      showNotification: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
        color: this.color.color,
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        onPressed: playSound,
      )
    );
  }
}
