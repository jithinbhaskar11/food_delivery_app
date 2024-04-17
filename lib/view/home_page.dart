import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_slive_appbar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/model/food_model.dart';
import 'package:food_delivery_app/model/restaurant_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food>filterMenuByCategory(FoodCategory category, List<Food>fullMenu){
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of food in given category
  List<Widget>getFoodInThisCategory(List<Food>fullMenu){
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu= filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {

          final food=categoryMenu[index];
        return MyFoodTile(food: food, ontap: (){}
        );
      },);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
                    MySliverAppBar(
                        title: MyTabBar(tabController: tabController),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Divider(
                              indent: 25,
                              endIndent: 25,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            MyCurrentLocation(),
                            MyDescriptionBox()
                          ],
                        ))
                  ],
          body:Consumer<Restaurant>(builder: (context, Restaurant, child) =>TabBarView(
              controller: tabController,
              children:getFoodInThisCategory(Restaurant.menu) ) ,)
      ),
    );
  }
}
