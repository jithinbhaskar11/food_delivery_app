import 'package:food_delivery_app/model/food_model.dart';

class CartModel{
  Food food;
  List<Addon>selectedAddons;
  int qty;

  CartModel({
    required this.food,
    required this.selectedAddons,
    this.qty=1
});

  double get totalPrice{
    double addonPrice= selectedAddons.fold(0, (sum, addon) => sum+addon.price);
    return (food.price+addonPrice)* qty;
  }

}