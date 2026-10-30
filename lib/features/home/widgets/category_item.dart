import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.name,
    required this.img,
    required this.color,
  });

  final String name;
  final String img;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Image.asset(img, height: 40),
          ),
        ),
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff7F4E1D),
            ),
          ),
        ),
      ],
    );
  }
}
