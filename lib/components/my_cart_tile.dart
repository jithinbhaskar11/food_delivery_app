import 'package:food_delivery_app/components/my_qty_selector.dart';
import 'package:food_delivery_app/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/restaurant_model.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartModel cartModel;
  const MyCartTile({
    super.key,
  required this.cartModel
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(cartModel.food.imagePath,height: 100,width: 100,)),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartModel.food.name),
                      Text('₹${cartModel.food.price}'),
                    ],
                  ),
                  Spacer(),
                  MyQtySelector(qty: cartModel.qty,
                      food: cartModel.food,
                      onIncreament: (){
                        restaurant.addTOCart(cartModel.food, cartModel.selectedAddons);
                      },
                      onDecreament: (){
                        restaurant.removeFromCart(cartModel);
                      }
                  )
                ],
              ),
            ),
            //addons
            SizedBox(
              height: cartModel.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cartModel.selectedAddons.map((addon) =>
                FilterChip(label: Row(
                  children: [
                    Text(addon.name),
                    Text(addon.price.toString())
                  ],
                ),
                    onSelected: (value){})
                ).toList()
              ),
            )
          ],
        ),
      ),
    ),) ;
  }
}
