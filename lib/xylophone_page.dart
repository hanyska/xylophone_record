import 'package:flutter/material.dart';
import 'package:xylophone_recorder/colors.dart';
import 'package:xylophone_recorder/models/xylophone.dart';
import 'package:xylophone_recorder/xylophone_widget.dart';

class XylophonePage extends StatelessWidget {
  List<Xylophone> xylophones = [
    new Xylophone(soundNumber: 1, soundText: 'C', soundColor: AppColors.PURPLE.color)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XylophoneWidget(color: AppColors.RED, text: 'C', soundNumber: 8,),
              XylophoneWidget(color: AppColors.ORANGE, text: 'B', soundNumber: 7,),
              XylophoneWidget(color: AppColors.YELLOW, text: 'A', soundNumber: 6,),
              XylophoneWidget(color: AppColors.LIGHT_GREEN, text: 'G', soundNumber: 5,),
              XylophoneWidget(color: AppColors.DARK_GREEN, text: 'F', soundNumber: 4,),
              XylophoneWidget(color: AppColors.LIGHT_BLUE, text: 'E', soundNumber: 3,),
              XylophoneWidget(color: AppColors.DARK_BLUE, text: 'D', soundNumber: 2,),
              XylophoneWidget(color: AppColors.PURPLE, text: 'C', soundNumber: 1,),
            ],
          );
        },
      ),
    );
  }
}
