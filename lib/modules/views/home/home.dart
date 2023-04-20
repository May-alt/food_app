import 'package:flutter/material.dart';
import 'package:food_app/layouts/reusibal_widgets/reus_widgets.dart';
import 'package:food_app/modules/views/home/components/app_bar_section.dart';
import 'package:food_app/modules/views/home/components/head_section.dart';
import 'package:food_app/modules/views/home/components/search_section.dart';
import 'package:food_app/modules/views/home/components/links_tabs_views.dart';
import 'package:food_app/modules/views/home/components/body_section.dart';
import 'package:food_app/modules/views/home/components/drawer_app_bar.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: appBarSection(),
          drawer:DrawerAppBar(context),

          body: SafeArea(
            child: PaddingAllPage(
              child: Column(
                children: [

                  headSection(),

                  const SizedBox(height: 15.0,),


                 TabBar(
                     isScrollable: true,
                     labelStyle: TextStyle(fontSize: 18,color: Colors.black),

                     physics: BouncingScrollPhysics(),
                     unselectedLabelStyle: TextStyle(fontSize:16,color: Colors.blueGrey),
                     tabs: [

                       Tab(text: "All",),
                       Tab(text: "Pastries",),
                       Tab(text: "Snacks",),
                       Tab(text: "Drinks",),
                 ]),
                  const SizedBox(height:15.0,),

                  Flexible(
                      child: TabBarView(
                        children: [
                          BodySection(),
                          BodySection(),
                          BodySection(),
                          BodySection(),
                        ],
                      ),
                  ),
                ]),
            ),
          ),
        ),
    );
  }
}
