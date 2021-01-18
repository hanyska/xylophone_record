import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_recorder/models/xylophone.dart';

class XylophoneWidget extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();
  final Xylophone xylophone;

  XylophoneWidget(this.xylophone);

  void playSound() {
    assetsAudioPlayer.open(
      Audio(this.xylophone.soundPath),
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
        color: this.xylophone.soundColor,
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            this.xylophone.soundText,
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
