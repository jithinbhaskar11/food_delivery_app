import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login_page.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

  final emailController=TextEditingController();
  final passController=TextEditingController();
  final cPassController=TextEditingController();

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
                height: 24,
              ),
              Text('Food Delivery App',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(height: 25,),
              MyTextField(controller: emailController, hintText: 'Enter your Email', obscureText: false),
              SizedBox(height: 10,),
              MyTextField(controller: passController, hintText: 'Enter Your Password', obscureText: true),
              SizedBox(height: 10,),
              MyTextField(controller: cPassController, hintText: 'Re-enter Your Password', obscureText: true),
              SizedBox(height: 10,),
              MyButton(text: 'Sign Up', onTap: (){}),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already a user?',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  SizedBox(width: 4,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  }, child:Text('LogIn  here'))
                ],
              )
            ],
          ),
        )
    );
  }
}
