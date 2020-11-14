import 'package:flutter/material.dart';
import 'BUTTOMIMAGE-3.dart';




class BottumimageclassnameThree extends StatelessWidget {
  BottumimageclassnameThree({this.buttomThreeCourse});
  ButtomThreePageImage buttomThreeCourse;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(buttomThreeCourse.image),
        Text(buttomThreeCourse.title)
      ],
    );





  }



}
