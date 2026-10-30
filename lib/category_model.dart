import 'package:rertail/core/helpers/app_assets.dart';
import 'package:rertail/core/helpers/app_colors.dart';

class Category {
  static List<Map<String, dynamic>> categories = [
    {"name": "Fruits", "image": AppAssets.fruits, "color": AppColors.fruits},
    {
      "name": "Vegetables",
      "image": AppAssets.vegetables,
      "color": AppColors.vegetables,
    },
    {"name": "Meat", "image": AppAssets.meat, "color": AppColors.meat},
    {"name": "Fish", "image": AppAssets.fish, "color": AppColors.fish},
    {
      "name": "Sea food",
      "image": AppAssets.sea_food,
      "color": AppColors.seaFood,
    },
    {"name": "Juice", "image": AppAssets.juice, "color": AppColors.juice},
    {
      "name": "Egg & Milk",
      "image": AppAssets.egg_milk,
      "color": AppColors.eggMilk,
    },
    {
      "name": "Ice Cream",
      "image": AppAssets.ice_cream,
      "color": AppColors.iceCream,
    },
    {"name": "Cake", "image": AppAssets.cake, "color": AppColors.cake},
  ];

  static List<Map<String, dynamic>> deals = [
    {"name": "Red Apple", "image": AppAssets.apple, "price": 4.99},
    {"name": "Original Banana", "image": AppAssets.banana, "price": 5.99},
    {"name": "Avocado Bowl", "image": AppAssets.avocado, "price": 24.0},
    {"name": "Salmon", "image": AppAssets.salmon, "price": 50.0},
  ];
}
