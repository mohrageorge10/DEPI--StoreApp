import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_elevate_button.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';
import 'package:rertail/features/auth/sign_in.dart';
import 'package:rertail/features/auth/sign_up.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              Image.asset("assets/onboarding1.png", height: 300),
              SizedBox(height: 32),
              Text(
                "Welcome to our app",
                style: AppTextStyles.kText20Brown,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "  Shop online and get groceries\ndelivered from stores to your home\nin as fast as 1 hour.",
                style: AppTextStyles.kText16Brown,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              AppElevateButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => SignUp()));
                },
                txt: "Sign Up",
              ),
              SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => SignIn()));
                },
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(double.infinity, 50),
                  side: BorderSide(color: AppColors.primaryColor, width: 1),
                ),
          
                child: Text(
                  "Sign in",
                  style: AppTextStyles.kTextOutlineButton
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
