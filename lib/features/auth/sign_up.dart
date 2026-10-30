import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_elevate_button.dart';
import 'package:rertail/core/helpers/app_form_field.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';
import 'package:rertail/features/home/navigator.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: AppTextStyles.kTextAppBar,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: AppColors.primaryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/sign_up.png", height: 290),
              SizedBox(height: 14),
              Text(
                "Please enter your information to \ncreate an account.",
                style: AppTextStyles.kText16Brown
              ),
              SizedBox(height: 20),
              AppFormField(
                hint: "Email",
                prefixIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 16),
              AppFormField(
                hint: "Password",
                prefixIcon: Icon(Icons.lock_outlined),
                showEyeIcon: true,
              ),
              SizedBox(height: 16),
              AppFormField(
                hint: "Confirm Password",
                prefixIcon: Icon(Icons.lock_outlined),
                showEyeIcon: true,
              ),
              SizedBox(height: 18),
              AppElevateButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => NavigationHome()),
                  );
                }, txt: 'Sign up',
              ),

              SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}
