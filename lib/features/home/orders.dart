import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';
import 'package:rertail/features/home/widgets/custom_tab_bar.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Orders", style: AppTextStyles.kTextAppBar),
        backgroundColor: AppColors.whiteColor,
      ),
      body: CustomTabBar(),
    );
  }
}
