import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';
import 'package:rertail/features/home/history.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,

            labelColor: AppColors.primaryColor,
            labelStyle: AppTextStyles.kText18Brown,

            unselectedLabelStyle: AppTextStyles.kText18Brown,

            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.orange, width: 4.0),
              borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
            ),

            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'No Orders',
                style: AppTextStyles.kText24Brown.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            History(),
          ],
        ),
      ),
    );
  }
}
