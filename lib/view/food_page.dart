
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';

import '../model/food_model.dart';

class FoodPage extends StatelessWidget {
  
  final Food food;
  
  const FoodPage({
    super.key,
  required this.food
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(food.imagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(food.price,style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  SizedBox(height: 10,),
                  Text(food.description,style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  SizedBox(height: 10,),
        
                  Text('Add-ons',style: TextStyle(fontWeight: FontWeight.bold,),),
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary
                      )
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: food.addons.length,
                      itemBuilder: (context, index) {
        
                        Addon addon =food.addons[index];
        
                        return CheckboxListTile(value: false, onChanged: (value){},
                          title: Text(addon.name),
                          subtitle: Text(addon.price),
                        );
                      },),
                  ),
                  SizedBox(height: 10,),
                  MyButton(text: 'Add To Cart', onTap: (){})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
