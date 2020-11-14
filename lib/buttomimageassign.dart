import 'package:flutter/material.dart';
import 'imagesforbuttom.dart';


class Bottumimageclassname extends StatelessWidget {
  Bottumimageclassname({this.buttomCourse});
  ButtomPageImage buttomCourse;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
             Image.asset(buttomCourse.image),
             Text(buttomCourse.title)
      ],
    );





  }



}

