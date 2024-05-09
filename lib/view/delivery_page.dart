import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_receipt.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery details'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
     bottomNavigationBar: customBottomNavBar(context),
    );
  }
}

Widget customBottomNavBar(BuildContext context){
  return Container(
    padding: EdgeInsets.all(25),
    height: 100,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40)
      ),
    ),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle
          ),
          child: IconButton(onPressed: (){},icon: Icon(Icons.person),),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ramesh',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.inversePrimary),),
            Text('Driver',style: TextStyle(color: Theme.of(context).colorScheme.primary),)
          ],
        ),
        // SizedBox(width: 20,),
        Spacer(),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.message)),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.green,)),
            )
          ],
        )
      ],
    ),
  );
}
