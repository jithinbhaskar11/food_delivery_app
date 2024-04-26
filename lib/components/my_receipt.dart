import 'package:flutter/material.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 25,right: 25,bottom: 25,top:50),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thank you for your order'),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text('Receipt here'),
          )
        ],
      ),
    ),
    );
  }
}
