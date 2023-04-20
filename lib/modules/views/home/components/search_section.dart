import 'package:flutter/material.dart';

Widget searchSection() => Container(
  height: 50,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
    color: Colors.grey.shade300,
  ),

  child:  TextFormField(
    decoration: InputDecoration(
      contentPadding:const EdgeInsets.all(08.0),
      prefixIcon: Icon(Icons.search),
      hintText: "Search any food",
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
  ),
);