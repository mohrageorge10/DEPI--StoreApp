import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';

class AppFormField extends StatelessWidget {
   const AppFormField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.showEyeIcon = false,
  });

  final String hint;
  final bool showEyeIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.formFieldColor,
        prefixIcon: prefixIcon,
        hintText: hint,
        hintStyle: AppTextStyles.kTextHint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.formFieldColor, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        suffixIcon: showEyeIcon
            ? Icon(Icons.remove_red_eye_outlined, color: AppColors.primaryColor)
            : null,
      ),
    );
  }
}
