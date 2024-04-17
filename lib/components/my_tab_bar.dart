import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food_model.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  // List<Tab>buildCategoryTabs(){
  //   return FoodCategory.values.map((e){
  //     return Tab(
  //       text: e.toString().split('-').last,
  //     );
  //   } ).toList();
  // }

  List<Tab>buildCategoryTabs(){
    return FoodCategory.values.map((catecory){
      return Tab(
        text: catecory.toString().split('_').last,
      );
    }).toList();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: buildCategoryTabs()
      ),
    );
  }
}
