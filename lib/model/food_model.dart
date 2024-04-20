class Food{
  final String name;
  final String description;
  final String imagePath;
  final int price;
  final FoodCategory category;
  List<Addon>addons;
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.addons
});
}

enum FoodCategory{
  burgers,
  salads,
  sides,
  desserts,
  drinks
}

class Addon{
  String name;
  int price;

  Addon({
    required this.name,
    required this.price
});
}