import 'package:flutter/material.dart';


 appBarSection() => AppBar(

   backgroundColor: Color(0xff232227),
   elevation: 0.0,
   // leading: IconButton(
   //   onPressed: (){},
   //   icon:Icon(Icons.menu_rounded,color: Colors.white,),
   // ),
   actions: [
     CircleAvatar(
       radius: 13,
       backgroundColor: Colors.lime,
       child: Icon(Icons.notifications,color: Colors.black,),
     ),
     SizedBox(width: 08.0,),
     CircleAvatar(
       radius: 13,
       backgroundColor: Colors.lime,
       child: Icon(Icons.search,color: Colors.black),
     )


   ],);