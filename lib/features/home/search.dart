import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_form_field.dart';
import 'package:rertail/features/home/widgets/category_item.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "name": "Fruits",
        "image": "assets/fruits.png",
        "color": Color(0xffEDD0FF),
      },
      {
        "name": "Vegetables",
        "image": "assets/vegetables.png",
        "color": Color(0xffFFD9BA),
      },
      {"name": "Meat", "image": "assets/meat.png", "color": Color(0xffFACCCC)},
      {"name": "Fish", "image": "assets/fish.png", "color": Color(0xffFBC1BD)},
      {
        "name": "Sea food",
        "image": "assets/sea_food.png",
        "color": Color(0xffFFE299),
      },
      {
        "name": "Juice",
        "image": "assets/juice.png",
        "color": Color(0xffD3E5C4),
      },
      {
        "name": "Egg & Milk",
        "image": "assets/egg_milk.png",
        "color": Color(0xffDAF2FC),
      },
      {
        "name": "Ice Cream",
        "image": "assets/ice_cream.png",
        "color": Colors.white,
      },
      {"name": "Cake", "image": "assets/cake.png", "color": Color(0xffFECA97)},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 50,
          children: [
            AppFormField(
              hint: "Search",
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
            ),

            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return CategoryItem(
                    name: categories[index]["name"],
                    img: categories[index]["image"],
                    color: categories[index]["color"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
