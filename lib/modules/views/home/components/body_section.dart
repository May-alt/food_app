import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app/modules/views/home/detaille_home/detailler.dart';
import 'package:food_app/models/all_product_models.dart';


class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: allProductModles.length,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

          childAspectRatio: 0.76,
          crossAxisSpacing: 8,
          mainAxisSpacing: 10.0
      ),
      itemBuilder: (context, index) {
        return bodyContent(context,allProductModles[index],index);
      },
    );
  }



  Widget bodyContent(context,AllProductModles allProd,index) => Container(
    child: InkWell(
      onTap: (){
     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
       return DetaillerHomeViews(
         name_detailles: allProductModles[index].name ,
         image_detailles: allProductModles[index].image,

       );
     },))  ;

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: AssetImage("${allProd.image}"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0,bottom: 10.0,right: 05.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("${allProd.name}",
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${allProd.prix}",
                    style: TextStyle(color: Colors.white,fontSize: 14),
                  ),
                  Icon(Icons.favorite,color: Colors.lime,)
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );



}


