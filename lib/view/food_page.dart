import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/model/restaurant_model.dart';
import 'package:provider/provider.dart';

import '../model/food_model.dart';

class FoodPage extends StatefulWidget {

  final Food food;

  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.addons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final Map<Addon, bool> selectedAddons = {};

  void addToCart(Food food, Map<Addon,bool>selectedAddons){
    Navigator.pop(context);

    List<Addon>currentlySelectedAddons=[];

    for(Addon addon in food.addons){
      if(widget.selectedAddons[addon]==true){
        currentlySelectedAddons.add(addon);
  }
  }
    context.read<Restaurant>().addTOCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '₹${widget.food.price}',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.food.description,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add-ons',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary)),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.food.addons.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.addons[index];

                        return CheckboxListTile(
                          value: widget.selectedAddons[addon] ,
                          onChanged: (bool? value) {
                            setState(() {
                             widget.selectedAddons[addon]=value!;
                            });
                          },
                          title: Text(addon.name),
                          subtitle: Text('₹${addon.price}'),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(text: 'Add To Cart', onTap: () =>addToCart(widget.food,widget.selectedAddons)
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
