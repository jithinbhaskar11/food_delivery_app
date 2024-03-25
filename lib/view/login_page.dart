

import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {


  final emaillController=TextEditingController();
  final passController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              SizedBox(
                height: 25,
              ),
              Text('Food Delivery App',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(height: 25,),
              MyTextField(controller: emaillController, hintText: 'Enter your Email', obscureText: false),
              SizedBox(height: 10,),
              MyTextField(controller: passController, hintText: 'Enter Your Password', obscureText: true),
              SizedBox(height: 10,),
              MyButton(text: 'LogIn', onTap: (){}),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New here?',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  SizedBox(width: 4,),
                  TextButton(onPressed: (){}, child:Text('Register here'))
                ],
              )
            ],
          ),
        ));
  }
}
