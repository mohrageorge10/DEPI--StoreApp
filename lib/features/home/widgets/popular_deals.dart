import 'package:flutter/material.dart';

class PopularDeals extends StatelessWidget {
  const PopularDeals({super.key, required this.deal});
  final Map<String, dynamic> deal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 185,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(deal["image"], height: 75),
          SizedBox(height: 10),
          Text(
            deal["name"],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff7F4E1D),
            ),
          ),
          Text(
            "1kg,priceg",
            style: TextStyle(fontSize: 12, color: Color(0xff929292)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${deal["price"]}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFF5E00),
                ),
              ),
              Icon(Icons.add_circle, color: Colors.green, size: 30),
            ],
          ),
        ],
      ),
    );
  }
}
