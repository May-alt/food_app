import 'package:flutter/material.dart';

class TabsLinksViews extends StatelessWidget {

  const TabsLinksViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:35,
      width: double.infinity,
      // color: Colors.lime,
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),

              child: TextButton( onPressed: (){}, child: Text("All"),),
            ),
            Container(
              padding: EdgeInsets.zero,


              child: TextButton( onPressed: (){}, child: Text("Pastries"),),
            ),
            Container(
              padding: EdgeInsets.zero,


              child: TextButton( onPressed: (){}, child: Text("Snacks"),),
            ),

            Container(
              padding: EdgeInsets.zero,


              child: TextButton( onPressed: (){}, child: Text("Drinks"),),
            ),


          ],
        ),
      )
    );
  }
}

