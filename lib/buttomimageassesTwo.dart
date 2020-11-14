import 'package:flutter/material.dart';
import 'buttomimages-2.dart';



class BottumimageclassnameTwo extends StatelessWidget {
  BottumimageclassnameTwo({this.buttomTwoCourse});
  ButtomTwoPageImage buttomTwoCourse;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(buttomTwoCourse.image),
        Text(buttomTwoCourse.title)
      ],
    );





  }



}

