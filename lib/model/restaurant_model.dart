import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'cart_model.dart';
import 'food_model.dart';

class Restaurant extends ChangeNotifier {
  final List<Food>_menu = [

  ///burgers
  Food(
  name: 'Classic Burger',
  description: "Experience the Classic Burger, a harmony of a succulent grilled beef patty and a slice of melty cheese, all tucked into a soft, toasted bun.",
  imagePath: 'assets/burgers/burger1.jpeg',
  price: 130,
  category: FoodCategory.burgers,
  addons: [
  Addon(name: 'Extra chese', price: 20),
  Addon(name: 'Bacon', price: 60),
  Addon(name: 'Avocado', price: 30),
  ]),
  Food(name: 'Mini Burger',
  description: "Experience the Classic Burger, a harmony of a succulent grilled beef patty and a slice of melty cheese, all tucked into a soft, toasted bun. But as a tiny snack",
  imagePath: 'assets/burgers/burger2.jpeg',
  price: 60,
  category: FoodCategory.burgers,
  addons: [
  Addon(name: 'Extra chese', price: 20),
  Addon(name: 'Extra BBQ sauce', price: 20),
  Addon(name: 'Avocado', price: 30),
  ]),
  Food(name: 'Bacon Burger',
  description: "Bite into the Bacon Burger, a tantalizing combination of a succulent beef patty and crispy, smoky bacon. Topped with fresh lettuce, ripe tomatoes, tangy pickles, and a slice of melty cheese, all nestled within a lightly toasted bun. A hearty delight for all bacon lovers!" ,
  imagePath: 'assets/burgers/burger3.jpeg',
  price: 150,
  category: FoodCategory.burgers,
  addons: [
  Addon(name: 'Extra chese', price: 20),
  Addon(name: 'Bacon', price: 60),
  Addon(name: 'Avocado', price: 30),
  ]),
  Food(name: 'Pineapple Burger',
  description: "Experience the Pineapple Burger, a unique blend of a juicy beef patty and a slice of grilled pineapple. A tropical twist on the classic burger, complemented by tangy BBQ sauce." ,
  imagePath: 'assets/burgers/buregr3 pa.jpeg',
  price: 160,
  category: FoodCategory.burgers,
  addons: [
  Addon(name: 'BBQ sauce', price: 20),
  Addon(name: 'Bacon', price: 60),
  Addon(name: 'Pineapple slice', price: 30),
  ]),
  Food(name: 'Pulled Pork Burger',
  description: "Indulge in the Pulled Pork Burger, a feast of tender, slow-cooked pork that's been shredded to perfection. Topped with a tangy BBQ sauce, this burger offers a mouthwatering medley of flavors." ,
  imagePath: 'assets/burgers/burger4 pp.jpeg',
  price: 200,
  category: FoodCategory.burgers,
  addons: [
  Addon(name: 'BBQ sauce', price: 20),
  Addon(name: 'Bacon', price: 60),
  Addon(name: 'Extra cheese', price: 30),
  ]),

  ///drinks
  Food(name: 'Grape Juice',
  description: "Enjoy the Grape Juice, a refreshing beverage bursting with the natural sweetness of ripe grapes. A perfect thirst quencher that offers a taste of nature's goodness." ,
  imagePath: 'assets/drinks/_1c4d0564-1479-4da0-a022-e94d8655a317.jpeg',
  price: 80,
  category: FoodCategory.drinks,
  addons: [
  Addon(name: 'Ball Grapes', price: 50),
  Addon(name: 'Ginger Zest', price: 20),
  Addon(name: 'Mint Leaves', price: 10),
  ]),
  Food(name: 'Watermelon Juice',
  description: "Sip on the Watermelon Juice, a revitalizing drink packed with the fresh and sweet flavors of ripe watermelon. A perfect summer cooler that's both delicious and hydrating." ,
  imagePath: 'assets/drinks/_5d03bf5e-0bd0-4ecf-94f3-9c99d7086191.jpeg',
  price: 80,
  category: FoodCategory.drinks,
  addons: [
  Addon(name: 'Club soda', price: 50),
  Addon(name: 'Ginger Zest', price: 20),
  Addon(name: 'Mint Leaves', price: 10),
  ]),
  Food(name: 'lemonade',
  description: "Refresh yourself with the Lemonade, a classic drink made from freshly squeezed lemons. It's a perfect balance of tart and sweet, offering a revitalizing burst of flavor." ,
  imagePath: 'assets/drinks/_911d3de0-f4b3-47e9-a1d5-cd1ff4568f17.jpeg',
  price: 25,
  category: FoodCategory.drinks,
  addons: [
  Addon(name: 'Club soda', price: 50),
  Addon(name: 'Ginger Zest', price: 20),
  Addon(name: 'Mint Leaves', price: 10),
  ]),
  Food(name: 'Classic Mojito',
  description: "Relish the Mojito, a refreshing cocktail that combines the tang of lime and the sweetness of sugar with mint and rum. A classic Cuban delight that's perfect for any occasion." ,
  imagePath: 'assets/drinks/_911d3de0-f4b3-47e9-a1d5-cd1ff4568f17.jpeg',
  price: 60,
  category: FoodCategory.drinks,
  addons: [
  Addon(name: 'Club soda', price: 50),
  Addon(name: 'Ginger Zest', price: 20),
  Addon(name: 'Mint Leaves', price: 10),
  ]),
  Food(name: 'Classic Mojito',
  description: "Delight in the Pineapple Juice, a tropical beverage filled with the sweet and tangy flavors of ripe pineapple. A refreshing drink that transports you to a sunny beach with every sip." ,
  imagePath: 'assets/drinks/_b891d5b8-c14f-48b1-a5e2-6f594c3fdd0f.jpeg',
  price: 80,
  category: FoodCategory.drinks,
  addons: [
  Addon(name: 'Club soda', price: 50),
  Addon(name: 'Ginger Zest', price: 20),
  Addon(name: 'Mint Leaves', price: 10),
  ]),

  ///salads
  Food(name: 'Fruit Salad',
  description: "Dive into the Fruit Salad, a vibrant mix of fresh, juicy fruits. A healthy and delicious choice that offers a burst of natural sweetness with every bite.",
  imagePath: 'assets/salad/salad1.jpeg',
  price: 120,
  category: FoodCategory.salads,
  addons: [
  Addon(name: 'Strawberry Sauce', price: 50),
  Addon(name: 'Honey', price: 100),
  Addon(name: 'Chia Seeds', price: 10),
  ]),
  Food(name: 'Spicy Salad',
  description: "Experience the Spicy Salad, a fiery blend of fresh vegetables tossed with a zesty dressing. A bold choice for those who love a kick of heat in their meal." ,
  imagePath: 'assets/salad/salad2.jpeg',
  price: 140,
  category: FoodCategory.salads,
  addons: [
  Addon(name: 'Spicy Sauce', price: 50),
  Addon(name: 'Crushed pepper', price: 100),
  Addon(name: 'Hot Sauce', price: 10),
  ]),
  Food(
  name: 'Cucumber Salad',
  description: "Indulge in the refreshing taste of our Cucumber Salad, featuring crisp cucumber slices tossed with a light dressing. Perfect for those seeking a cool and revitalizing dish.",
  imagePath: 'assets/salad/salad3.jpeg',
  price: 120,
  category: FoodCategory.salads,
  addons: [
  Addon(name: 'Feta Cheese', price: 80),
  Addon(name: 'Sunflower Seeds', price: 60),
  Addon(name: 'Balsamic Glaze', price: 30),
  ]),
  Food(
  name: 'Classic Salad',
  description: "Enjoy the timeless flavors of our Classic Salad, featuring a mix of crisp lettuce, ripe tomatoes, cucumbers, and tangy dressing. A perfect choice for those craving a traditional and refreshing salad experience.",
  imagePath: 'assets/salad/salad4.jpeg',
  price: 100,
  category: FoodCategory.salads,
  addons: [
  Addon(name: 'Grilled Chicken', price: 150),
  Addon(name: 'Shredded Cheese', price: 80),
  Addon(name: 'Croutons', price: 50),
  ]
  ),
  Food(
  name: 'Avocado Salad',
  description: "Savor the creamy richness of our Avocado Salad, featuring fresh avocado slices, mixed greens, cherry tomatoes, and a tangy lime dressing. A delightful choice for avocado lovers seeking a nutritious and flavorful meal.",
  imagePath: 'assets/salad/salad5.jpeg',
  price: 160,
  category: FoodCategory.salads,
  addons: [
  Addon(name: 'Grilled Shrimp', price: 200),
  Addon(name: 'Feta Cheese', price: 80),
  Addon(name: 'Toasted Almonds', price: 60),
  ]
  ),

    ///sides
  Food(
  name: 'Vegetable Side Dish',
  description: "Enjoy our flavorful Vegetable Side Dish, a medley of fresh seasonal vegetables sautéed to perfection. A perfect complement to any main course.",
  imagePath: 'assets/sides/side1.jpeg',
  price: 80,
  category: FoodCategory.sides,
  addons: [
  Addon(name: 'Garlic Butter', price: 20),
  Addon(name: 'Parmesan Cheese', price: 30),
  Addon(name: 'Herb Seasoning', price: 15),
  ]
  ),
  Food(
  name: 'Garlic Butter Roasted Potatoes',
  description: "Indulge in the savory goodness of our Garlic Butter Roasted Potatoes, crispy on the outside and tender on the inside, tossed in aromatic garlic butter. A delightful side dish bursting with flavor.",
  imagePath: 'assets/sides/side2.jpeg',
  price: 90,
  category: FoodCategory.sides,
  addons: [
  Addon(name: 'Parmesan Cheese', price: 30),
  Addon(name: 'Fresh Herbs', price: 20),
  Addon(name: 'Sour Cream', price: 25),
  ]
  ),
  Food(
  name: 'Sweet Potato Fries',
  description: "Indulge in our crispy Sweet Potato Fries, made from fresh sweet potatoes and lightly seasoned for the perfect balance of sweet and savory. A delightful alternative to regular fries.",
  imagePath: 'assets/sides/side3.jpeg',
  price: 100,
  category: FoodCategory.sides,
  addons: [
  Addon(name: 'Chipotle Mayo', price: 25),
  Addon(name: 'Honey Mustard Dip', price: 20),
  Addon(name: 'Garlic Aioli', price: 30),
  ]
  ),
  Food(
  name: 'Coleslaw',
  description: "Enjoy the crisp and creamy texture of our Coleslaw, featuring shredded cabbage and carrots mixed with a tangy dressing. A classic side dish that perfectly complements any meal.",
  imagePath: 'assets/sides/side4.jpeg',
  price: 80,
  category: FoodCategory.sides,
  addons: [
  Addon(name: 'Raisins', price: 15),
  Addon(name: 'Pineapple Chunks', price: 20),
  Addon(name: 'Chopped Nuts', price: 25),
  ]
  ),
  Food(
  name: 'Healthy Side Dish',
  description: "Savor our Healthy Side Dish, a nutritious blend of fresh vegetables and grains, packed with vitamins and fiber. A guilt-free addition to your meal that's both delicious and satisfying.",
  imagePath: 'assets/sides/side6.jpeg',
  price: 90,
  category: FoodCategory.sides,
  addons: [
  Addon(name: 'Quinoa', price: 30),
  Addon(name: 'Steamed Broccoli', price: 25),
  Addon(name: 'Mixed Seeds', price: 20),
  ]
  ),

    ///desserts
  Food(
  name: 'Apple Pie',
  description: "Indulge in the classic flavor of our Apple Pie, featuring tender, cinnamon-spiced apples baked in a flaky crust. Served warm and topped with a scoop of vanilla ice cream, it's the perfect dessert to satisfy your sweet tooth.",
  imagePath: 'assets/desserts/apple pie.png',
  price: 150,
  category: FoodCategory.desserts,
  addons: [
  Addon(name: 'Vanilla Ice Cream', price: 30),
  Addon(name: 'Caramel Sauce', price: 20),
  Addon(name: 'Whipped Cream', price: 15),
  ]
  ),
  Food(
  name: 'Kaju Katli',
  description: "Indulge in the rich and creamy flavor of our Kaju Katli, a traditional Indian sweet made from cashew nuts, ghee, and sugar. Each bite is a delightful blend of sweetness and nuttiness, perfect for celebrating special occasions or satisfying your sweet cravings.",
  imagePath: 'assets/desserts/kaju katli.png',
  price: 200,
  category: FoodCategory.desserts,
  addons: [
  Addon(name: 'Silver Leaf (Varak)', price: 10),
  Addon(name: 'Pistachio Garnish', price: 20),
  Addon(name: 'Saffron Strands', price: 30),
  ]
  ),
  Food(
  name: 'Almond Malai Kulfi',
  description: "Savor the creamy goodness of our Almond Malai Kulfi, a traditional Indian frozen dessert made with milk, sugar, and almonds. Each bite is rich, smooth, and bursting with nutty flavor, making it a perfect treat to beat the heat.",
  imagePath: 'assets/desserts/almond malai kulfi.png',
  price: 180,
  category: FoodCategory.desserts,
  addons: [
  Addon(name: 'Chopped Almonds', price: 20),
  Addon(name: 'Saffron Infusion', price: 25),
  Addon(name: 'Rose Petal Garnish', price: 25),
  ]
  ),
  Food(
  name: 'Lemon Tart',
  description: "Treat yourself to the tangy sweetness of our Lemon Tart, featuring a buttery crust filled with smooth and zesty lemon curd. Topped with a dollop of whipped cream or meringue, it's the perfect balance of tart and sweet.",
  imagePath: 'assets/desserts/lemon tart.png',
  price: 160,
  category: FoodCategory.desserts,
  addons: [
  Addon(name: 'Whipped Cream', price: 20),
  Addon(name: 'Meringue Topping', price: 25),
  Addon(name: 'Fresh Berries', price: 30),
  ]
  ),
  Food(
  name: 'Ras Malai',
  description: "Indulge in the creamy delight of our Ras Malai, a traditional Indian dessert made with soft paneer (Indian cottage cheese) dumplings soaked in sweet, saffron-infused milk. Garnished with chopped nuts and cardamom, it's a decadent treat for your taste buds.",
  imagePath: 'assets/desserts/rasmalai.png',
  price: 180,
  category: FoodCategory.desserts,
  addons: [
  Addon(name: 'Chopped Nuts', price: 20),
  Addon(name: 'Saffron Strands', price: 25),
  Addon(name: 'Cardamom Powder', price: 15),
  ]
  )
  ];


  ///getters

List<Food> get menu =>_menu;
List<CartModel> get cartlist=>cart;

///operations
//user cart
final List<CartModel>cart=[];

//add to cart
void addTOCart(Food food, List<Addon>selectedAddons){
  CartModel? cartItem=cart.firstWhereOrNull((item) {
    bool isSameFood= item.food==food;

    bool isSameAddons= ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameFood && isSameAddons;
  });
  //if item already  exists, increase qty
  if(cartItem!=null){
    cartItem.qty++;
  }

  //else add a new item

  else{
    cart.add(
        CartModel(food: food, selectedAddons: selectedAddons)
    );
  }
  notifyListeners();
}

///remove from cart

void  removeFromCart(CartModel cartModel){

  int cartIndex=cart.indexOf(cartModel);

  if(cartIndex!=-1){
    cart[cartIndex].qty--;
  }else{
    cart.removeAt(cartIndex);
  }
  notifyListeners();
}

///calculate price
double getTotalPrice(){
  double total=0.0;

  for (CartModel cartModel in cart){
    double itemTotal=cartModel.food.price;

    for (Addon addon in cartModel.selectedAddons){
      itemTotal += addon.price;
    }
    total += itemTotal * cartModel.qty;
  }
  return total;
}

///total count odf items
int getTotalItemCount(){
  int totalItemCount=0;

  for (CartModel cartModel in cart){
    totalItemCount+=cartModel.qty;
  }
  return totalItemCount;
}

///clear cart
void clearCart(){
  cart.clear();
  notifyListeners();
}

///helpers
//generate receipt
String displayReceipt(){
  final receipt=StringBuffer();
  receipt.writeln('Here is your receipt');
  receipt.writeln();

  //time
  String formatDate=DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln();
  receipt.writeln('----------');

  for(final cartItem in cart){
    receipt.writeln(
      "${cartItem.qty} x ${cartItem.food.name} - ${formatPrice(cartItem.food.price)}"
    );

    if(cartItem.selectedAddons.isNotEmpty){
      receipt.writeln("Add-ons: ${formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }
  receipt.writeln('----------');
  receipt.writeln();
  receipt.writeln('Total Items: ${getTotalItemCount()}');
  receipt.writeln('Total Price: ${formatPrice(getTotalPrice())}');

  return receipt.toString();
}

//format double value into   money
String formatPrice(double price){
  return  "\₹${price.toStringAsFixed(2)}";
}

//format list of addons into summary
String formatAddons(List<Addon>addons){
  return addons.map((addon) => "${addon.name} (${formatPrice(addon.price)})").join(",");
}




}