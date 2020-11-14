import 'package:flutter/material.dart';

import 'buttomimages-2.dart';


class ButomscrollingimagesTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: buttomTwoRecentCourse.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 10 : 0),
            child: ExploreCoursecardTwo(buttomtwoCourse:buttomTwoRecentCourse[index]),
          );

        },

      ),
    );
  }
}
class ExploreCoursecardTwo  extends StatelessWidget {
  ExploreCoursecardTwo ({@required this.buttomtwoCourse});
  final ButtomTwoPageImage  buttomtwoCourse;
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
                  Image.asset(buttomtwoCourse.image ),

                  Text(buttomtwoCourse.title)



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