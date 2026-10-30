import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.img, required this.name, required this.price});
  final String img;
  final String name;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name Details",style:AppTextStyles.kTextAppBar),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(img),
            SizedBox(height: 20),
            Text(name,style: AppTextStyles.kText20Brown,),
            SizedBox(height: 10),
            Text("$price",style: AppTextStyles.kText20Brown,),
            SizedBox(height: 10),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: AppTextStyles.kText16Brown,textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}