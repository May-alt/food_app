import 'package:flutter/material.dart';
import 'package:food_app/layouts/reusibal_widgets/reus_widgets.dart';
import 'package:food_app/layouts/const_colors_app/colors_app.dart';


DrawerAppBar(context) =>Drawer(
  child: Column(
    children: [
      HeaderDrawerApp(context),
      SizedBox(height: 40.0),
      BuildMenuItemDrawerApp(),
    ],
  ),
);


Widget HeaderDrawerApp(context)
 => Container(
      width: double.infinity,
      height: 230,
      color: backgroundColorapp,
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 20.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/caption.jpg"),
                ),
                IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close,color: Colors.white,)),
              ],
            ),
            SizedBox(height: 08.0,),
            Text("Foulen Ben Foulen",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),
            ),
            SizedBox(height: 08.0,),
            RichText(
                text:TextSpan(
                    children: [
                      TextSpan(text: "Tel",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                      ),
                      TextSpan(text: "+216 568 359",
                        style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18,color: Colors.white),
                      ),
                    ]),
            ),
          ],
        ),
      ),
    );



Widget BuildMenuItemDrawerApp()
 =>Container(
      child: Column(
        children: [

          reusMenuItemListTile(
              onTap: (){},
              leading: Icon(Icons.production_quantity_limits,color: black),
            title: Text("All Products"),
            trailing: Icon(Icons.arrow_circle_right_rounded,color:limeApp),
          ),

          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.production_quantity_limits,color: black),
            title: Text("Pastries"),
            trailing: Icon(Icons.arrow_circle_right_rounded,color:limeApp),
          ),
          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.production_quantity_limits,color: black),
            title: Text("Snacks"),
            trailing: Icon(Icons.arrow_circle_right_rounded,color:limeApp),
          ),
          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.local_drink,color: black),
            title: Text("Drinks"),
            trailing: Icon(Icons.arrow_circle_right_rounded,color:limeApp),
          ),


          Divider(color: Colors.lime,height: 2,thickness: 1),

          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.settings,color: black),
            title: Text("AParametres &  confidentialité"),
          ),
          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.favorite,color: black),
            title: Text("favorite"),
          ),
          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.light,color: black),
            title: Text("Théme"),
          ),
          reusMenuItemListTile(
            onTap: (){},
            leading: Icon(Icons.logout,color: black),
            title: Text("Déconnexion"),
          ),

        ],
      ),
    );