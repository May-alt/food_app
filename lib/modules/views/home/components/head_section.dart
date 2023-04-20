import 'package:flutter/material.dart';

Widget headSection() => Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Hi, Jessica",
      style: TextStyle(
          color: Colors.grey,
           fontSize: 18,
      ),
      ),
      SizedBox(height: 08.0,),
      Wrap(
        children: [
          Text("What would you like to eat today?",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
        ],
      ),
    ],
  ),

);