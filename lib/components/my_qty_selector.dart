import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food_model.dart';

class MyQtySelector extends StatelessWidget {

  final int qty;
  final Food food;
  final  VoidCallback onIncreament;
  final  VoidCallback onDecreament;

  const MyQtySelector({
    super.key,
  required this.qty,
    required this.food,
    required this.onIncreament,
    required this.onDecreament,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onDecreament,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(qty.toString()),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncreament,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
