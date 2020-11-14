import 'package:flutter/material.dart';
import 'package:task1/imagesforbuttom.dart';

import 'BUTTOMSCOLLING-1.dart';
import 'BUTTOMSCOLLING-2.dart';
import 'BUTTOMSCOLLINGTHREE.dart';
import 'homeimage.dart';
import 'homeimageassign.dart';
import 'homepagescroll.dart';





void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData.dark(),
        home: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomPadding: true,
          appBar: AppBar(

            backgroundColor: Colors.black,

          ),

          body: SafeArea(
            child: SingleChildScrollView(


                child: Column(
                  children: [

                    Row(


                      children: [


                      Expanded(child: TextField(
                        decoration: InputDecoration(
                           icon: Icon(Icons.search_rounded , size: 40,),

                          hintText: "                    FLUTTER",

                        ),


                      ))
                    ],),
                    Homepagescroll(),

                    SizedBox(height: 60,),


                    Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          right: 10),
                      child: Row(
                        children: [
                          Text(" T R E N D I N G  V I D E O S ", style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold)),
                          SizedBox(width: 185,),
                          Text("SEE MORE > ", style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold))

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Butomscrollingimages(),
                    SizedBox(height: 35,),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          right: 10),
                      child: Row(
                        children: [
                          Text(" T R E N D I N G   D O U B T S ",
                              style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold)),
                          SizedBox(width: 180,),
                          Text("SEE MORE > ", style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold))

                        ],
                      ),
                    ),
                    SizedBox(height: 6,),
                    ButomscrollingimagesTwo(),
                    SizedBox(height: 35,),

                    Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          right: 10),
                      child: Row(
                        children: [
                          Text(" D A I L Y    Q U I Z S ", style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold)),
                          SizedBox(width: 210,),
                          Text("SEE MORE > ", style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold))

                        ],
                      ),
                    ),
                    SizedBox(height: 6,),
                    ButomscrollingimagesThree(),




                  ],  //children

                ),


            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home) , title: Text("HOME"),backgroundColor: Colors.black ),
              BottomNavigationBarItem(icon: Icon(Icons.person_search) , title: Text("DISCOVER"),backgroundColor: Colors.black ),

              BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined) , title: Text("MUSiC"),backgroundColor: Colors.black ),

              BottomNavigationBarItem(icon: Icon(Icons.person) , title: Text("PROFILE"),backgroundColor: Colors.black ),

            ],
          ),
        ),
    );
  }
}







