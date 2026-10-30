import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';

class Order extends StatelessWidget {
  const Order({
    super.key,
    required this.orderNum,
    required this.orderStatus,
    required this.date,
    required this.price,
    this.isDelivered = true,
  });
  final int orderNum;
  final String orderStatus;
  final String date;
  final int price;
  final bool isDelivered;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 25,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.whiteColor,
                size: 25,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Order #$orderNum", style: AppTextStyles.kText18Brown),
                Text(
                  orderStatus,
                  style: isDelivered
                      ? AppTextStyles.kText14Green
                      : AppTextStyles.kText14Red,
                ),
                Text(date, style: AppTextStyles.kTextHint),
              ],
            ),
          ),

          Text("\$$price", style: AppTextStyles.kText22Primary),
        ],
      ),
    );
  }
}
