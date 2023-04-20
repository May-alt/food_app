import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_app/layouts/reusibal_widgets/reus_widgets.dart';

class DetaillerHomeViews extends StatelessWidget {

  final  name_detailles;
  final  image_detailles;



   DetaillerHomeViews({
     Key? key,
     required this.name_detailles,
     required this.image_detailles,
    // required this.img,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 250,
                alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(image_detailles),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white30,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back,color: Colors.lime,)),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white30,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite,color: Colors.lime,)),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15.0,),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name_detailles,
                        style: TextStyle(color: Colors.white,fontSize: 35),
                      ),

                      SizedBox(height: 10.0,),

                      Text("A super delecious recipe i made for myself this morning. Tastes great and is goodfor you too§",
                        style: TextStyle(color: Colors.white30,fontSize: 18),
                      ),

                      SizedBox(height: 20.0,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          reusDetailleContainer(text: "20 min",icon: Icons.timer),
                          reusDetailleContainer(text: "Serves 1".toUpperCase(),icon: Icons.person),
                          reusDetailleContainer(text: "400 Cal".toUpperCase(),icon: Icons.local_fire_department_outlined),
                        ],
                      ),

                      SizedBox(height: 25.0,),

                      Text("Ingredients",
                        style: TextStyle(color: Colors.white30,fontSize: 20),
                      ),

                      SizedBox(height: 15.0,),


                      reusRowIngredient(backgroundImage: AssetImage("assets/images/ph1.jpg"),
                          text: "Rolled Oats",text2: "3/4 cup"),
                      reusRowIngredient(backgroundImage: AssetImage("assets/images/ph1.jpg"),
                          text: "Rolled Oats",text2: "3/4 cup"),
                      reusRowIngredient(backgroundImage: AssetImage("assets/images/ph1.jpg"),
                          text: "Rolled Oats",text2: "3/4 cup"),
                      reusRowIngredient(backgroundImage: AssetImage("assets/images/ph1.jpg"),
                          text: "Rolled Oats",text2: "3/4 cup"),




                    ]),
              ),

            ],
          ),
        ),
      )
    );
  }
}
