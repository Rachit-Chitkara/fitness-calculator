import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain(
      {@required this.heightM,
      @required this.weightKg,
      @required this.heightFt,
      @required this.weightLb,
      @required this.toggleH,
      @required this.toggleW});

  final int heightM;
  final int toggleH;
  final int toggleW;
  final int weightKg;
  final double heightFt;
  final int weightLb;
  double bmi;

  String calculateBMI() {
    if (toggleW == 0 && toggleH == 0) {
      bmi = weightKg / pow(heightM / 100, 2); //cm-kg
      return bmi.toStringAsFixed(1);
    } else if (toggleH == 1 && toggleW == 1) {
      //ft-lb}
      bmi = (weightLb / 2.2) / pow((heightFt * 30.48) / 100, 2);
      return bmi.toStringAsFixed(1);
    } else if (toggleH == 1 && toggleW == 0) {
      bmi = weightKg / pow((heightFt * 30.48) / 100, 2);
      return bmi.toStringAsFixed(1);
    } else {
      bmi = (weightLb / 2.2) / pow(heightM / 100, 2);
      return bmi.toStringAsFixed(1);
    }
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getVideo() {
    if (bmi >= 25) {
      return 'https://player.vimeo.com/external/432652000.hd.mp4?s=cb0dcd43f5b95e19b9e887c5e017e64c702fb8bb&profile_id=172&oauth2_token_id=57447761';
    } else if (bmi > 18.5) {
      return 'https://player.vimeo.com/external/416845921.sd.mp4?s=1b563969190e74490e9ce47570cb8efdd5476773&profile_id=139&oauth2_token_id=57447761';
    } else {
      return 'https://player.vimeo.com/external/364769660.hd.mp4?s=c1a314ce48de55ab76fd491f0011d29ce0a6118f&profile_id=172&oauth2_token_id=57447761';
    }
  }
}
