
import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryTextStyle=TextStyle(color:Theme.of(context).colorScheme.inversePrimary);
    var secondaryTextStyle=TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      decoration: BoxDecoration(
        border:Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      padding:  EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '₹ 150',style: primaryTextStyle,
              ),
              Text('Deliver charge',style: secondaryTextStyle,)
            ],
          ),
          Column(
            children: [
              Text('15-20 min',style: primaryTextStyle,),
              Text('Delivery time',style: secondaryTextStyle,)
            ],
          )
        ],
      ),
    );
  }
}
