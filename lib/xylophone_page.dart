import 'package:flutter/material.dart';
import 'package:xylophone_recorder/colors.dart';
import 'package:xylophone_recorder/models/xylophone.dart';
import 'package:xylophone_recorder/xylophone_widget.dart';

class XylophonePage extends StatelessWidget {
  final List<Xylophone> xylophones = [
    new Xylophone(soundNumber: 1, soundText: 'C', soundColor: AppColors.RED.color),
    new Xylophone(soundNumber: 2, soundText: 'B', soundColor: AppColors.ORANGE.color),
    new Xylophone(soundNumber: 3, soundText: 'A', soundColor: AppColors.YELLOW.color),
    new Xylophone(soundNumber: 4, soundText: 'G', soundColor: AppColors.LIGHT_GREEN.color),
    new Xylophone(soundNumber: 5, soundText: 'F', soundColor: AppColors.DARK_GREEN.color),
    new Xylophone(soundNumber: 6, soundText: 'E', soundColor: AppColors.LIGHT_BLUE.color),
    new Xylophone(soundNumber: 7, soundText: 'D', soundColor: AppColors.DARK_BLUE.color),
    new Xylophone(soundNumber: 8, soundText: 'C', soundColor: AppColors.PURPLE.color),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: xylophones.map(
                (Xylophone xylophone) => XylophoneWidget(xylophone)
            ).toList()
          );
        },
      ),
    );
  }
}
