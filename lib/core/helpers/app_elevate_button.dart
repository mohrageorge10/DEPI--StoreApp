import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';

class AppElevateButton extends StatelessWidget {
  const AppElevateButton({
    super.key,
    required this.onPressed,
    required this.txt,
  });
  final void Function() onPressed;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.infinity, 50),
        backgroundColor: AppColors.primaryColor,
      ),

      child: Text(
        txt,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
