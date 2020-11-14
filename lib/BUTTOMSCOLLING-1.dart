import 'package:flutter/material.dart';

import 'imagesforbuttom.dart';
class Butomscrollingimages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: buttomRecentCourse.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 10 : 0),
            child: ExploreCoursecard(buttomCourse:buttomRecentCourse [index]),
          );

        },

      ),
    );
  }
}
class ExploreCoursecard extends StatelessWidget {
  ExploreCoursecard({@required this.buttomCourse});
  final ButtomPageImage buttomCourse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right :20),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(10),
        child: Container(

          height: 200,
          width: 150,

          child: Column(
            children: [
              Expanded(child:Column(


                children: [
                  Image.asset(buttomCourse.image ),

                     Text(buttomCourse.title)



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