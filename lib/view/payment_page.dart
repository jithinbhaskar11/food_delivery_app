

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/view/delivery_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  GlobalKey<FormState>formkey=GlobalKey<FormState>();
  
  String cardNumber='';
  String expiryDate='';
  String cardHolderName='';
  String cvvCode='';
  bool showBackview=true;

  void userTappedPay(){
    if(formkey.currentState!.validate()){
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text('Confirm Payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Card number : $cardNumber'),
                Text('Card holder name : $cardHolderName'),
                Text('Expiry date : $expiryDate)'),
                Text('CVV : $cvvCode)'),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancel')),
            TextButton(onPressed: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryPage()));
            }, child: Text('Yes'))
          ],
        );
      },);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Checkout',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: showBackview,
                onCreditCardWidgetChange: (p0){}),
            
            CreditCardForm(cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data){
              setState(() {
                cardNumber=data.cardNumber;
                cardHolderName=data.cardHolderName;
                expiryDate=data.expiryDate;
                cvvCode=data.cvvCode;
                
              });
                },
                formKey:formkey),

            SizedBox(height: 20,),

            MyButton(text: "Pay now", onTap: (){
              userTappedPay();
            })
          ],
        ),
      ),
    );
  }
}
