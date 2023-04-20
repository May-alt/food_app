import 'package:flutter/material.dart';

 PaddingAllPage({required Widget? child}) => Padding(
     padding: EdgeInsets.all(20.0),
      child:child ,
 );

Widget reusDetailleContainer({
required String text,
   required IconData? icon,
}) => Container(
   height: 30,
   padding: EdgeInsets.all(02.0),
   decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10.0),
     color: Colors.lime,
   ),
   child: Row(
     children: [
       Icon(icon),
       SizedBox(width: 03.0,),
       Text(text),
     ],
   ),
 );


Widget reusRowIngredient({
  required ImageProvider? backgroundImage,
   required String text,
   required String text2,
}) =>Container(
   padding: EdgeInsets.only(bottom: 10.0),
   child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         CircleAvatar(
           backgroundImage: backgroundImage,
           radius: 25,
         ),
         SizedBox(width: 20.0,),
         Expanded(
           child: Text(text,
             style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
           ),),
         Text(text2,
           style: TextStyle(color: Colors.grey,fontSize: 16),
         ),
       ]),
 );


Widget reusMenuItemListTile({
 required void Function()? onTap,
  required Widget? leading,
  Widget? trailing,
  required Widget? title,
}) =>ListTile(
  onTap: onTap,
  leading: leading,
  title: title,
  trailing: trailing,
);