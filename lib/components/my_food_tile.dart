import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/food_model.dart';

class MyFoodTile extends StatelessWidget {
  
  final Food food;
  final void Function()? ontap;
  
  
  const MyFoodTile({
    super.key,
    required this.food,
    required this.ontap
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                    Text(food.price.toString(),style: TextStyle(fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                    Text(food.description,style: TextStyle(fontSize: 10,color: Theme.of(context).colorScheme.inversePrimary),)
                  ],
                )),
                SizedBox(width: 10,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(food.imagePath,height: 120,))
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
