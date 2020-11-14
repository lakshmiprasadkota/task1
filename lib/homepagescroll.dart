import 'package:flutter/cupertino.dart';
import 'package:task1/homeimage.dart';
import 'package:flutter/material.dart';
import 'package:task1/homeimageassign.dart';

class Homepagescroll extends StatefulWidget {
  @override
  _HomepagescrollState createState() => _HomepagescrollState();
}

class _HomepagescrollState extends State<Homepagescroll> {
  List<Container> indicators = [];
  int currentPage = 0;
  Widget updateIndicators(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCourse.map((course)
      {
        var index = recentCourse.indexOf(course);
        return Container(
          width: 7,
          height: 7,
          margin: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(

            shape: BoxShape.circle,
            color: currentPage == index ? Color(0xFF0971FE):Color(0xFFA6AEBD),
          ),

        );

      }).toList(),

    );

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
             height: 250,
              width: 380,
          child: PageView.builder(itemBuilder: (context,index){

          return Homeimageclassname(course: recentCourse[index],);
          },
            itemCount: recentCourse.length ,
            controller: PageController(initialPage: 0, viewportFraction: 1),
                 onPageChanged:(index){
              setState(() {
                currentPage= index;
              });
            },

          ),

        ),
        updateIndicators(),
      ],
    );


  }


}
