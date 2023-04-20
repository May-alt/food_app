import 'package:flutter/material.dart';
import 'package:food_app/modules/views/home/home.dart';
import 'package:food_app/layouts/const_colors_app/colors_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColorapp,
        primarySwatch: Colors.blue,
      ),
      home: HomeViews(),
      debugShowCheckedModeBanner: false,
    );
  }
}
