import 'package:flutter/material.dart';
import 'package:rertail/features/home/details_screen.dart';
import 'package:rertail/features/home/widgets/category_item.dart';
import 'package:rertail/features/home/widgets/popular_deals.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
    List deals = [
      {"name": "Red Apple", "image": "assets/apple.png", "price": 4.99},
      {"name": "Original Banana", "image": "assets/banana.png", "price": 5.99},
      {"name": "Avocado Bowl", "image": "assets/avocado.png", "price": 24.0},
      {"name": "Salmon", "image": "assets/salmon.png", "price": 50.0},
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/grocery.png"),
              SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7F4E1D),
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xffFF5E00),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return CategoryItem(
                      name: category["name"],
                      img: category["image"],
                      color: category["color"],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Deals",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7F4E1D),
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xffFF5E00),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final deal = deals[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              img: deal["image"],
                              name: deal["name"],
                              price: deal["price"],
                            ),
                          ),
                        );
                      },
                      child: PopularDeals(deal: deal),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: deals.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
