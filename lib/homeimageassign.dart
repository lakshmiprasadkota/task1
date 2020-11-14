import 'package:flutter/material.dart';
import 'package:task1/homeimage.dart';

class Homeimageclassname extends StatelessWidget {
  Homeimageclassname({this.course});
  HomePageImage course;
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
              child: Image.asset(course.image ,),),
          SizedBox(height: 5,),
          Container(
            child: Text(course.title),
          )
        ],
      );

  }
}
