import 'package:flutter/material.dart';
import 'package:rertail/features/home/widgets/order.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Order(
          orderNum: 345,
          orderStatus: "Delivered",
          date: "October 26, 2014",
          price: 700,
        ),
        Order(
          orderNum: 346,
          orderStatus: "Canceled",
          date: "October 14, 2016",
          price: 452,
          isDelivered: false,
        ),
        Order(
          orderNum: 347,
          orderStatus: "Delivered",
          date: "July 26, 2017",
          price: 281,
        ),
      ],
    );
  }
}
