import 'package:flutter/material.dart';

import 'BUTTOMIMAGE-3.dart';




class ButomscrollingimagesThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:buttomThreeRecentCourse.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 10 : 0),
            child: ExploreCoursecardThree(buttomthreeCourse:buttomThreeRecentCourse[index]),
          );

        },

      ),
    );
  }
}
class ExploreCoursecardThree  extends StatelessWidget {
  ExploreCoursecardThree ({@required this.buttomthreeCourse});
  final ButtomThreePageImage  buttomthreeCourse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right :20),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(10),
        child: Container(

          height:200,
          width: 150,

          child: Column(
            children: [
              Expanded(child:Column(


                children: [
                  Image.asset(buttomthreeCourse.image ),

                  Text(buttomthreeCourse.title)



                ],
              ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}