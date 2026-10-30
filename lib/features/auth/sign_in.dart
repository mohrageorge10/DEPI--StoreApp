import 'package:flutter/material.dart';
import 'package:rertail/core/helpers/app_colors.dart';
import 'package:rertail/core/helpers/app_elevate_button.dart';
import 'package:rertail/core/helpers/app_form_field.dart';
import 'package:rertail/core/helpers/app_text_styles.dart';
import 'package:rertail/features/auth/sign_up.dart';
import 'package:rertail/features/home/navigator.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: Text("Sign In", style: AppTextStyles.kTextAppBar),
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
              Image.asset("assets/sign_in.png", height: 290),
              SizedBox(height: 14),
              Text(
                "Enter your Email and \npassword to access your account",
                style: AppTextStyles.kText16Brown,
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
              SizedBox(height: 12),
              Text(
                "Forgot Password?",
                style: AppTextStyles.kText14Primary,
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 18),
              AppElevateButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => NavigationHome()),
                  );
                },
                txt: "Sign in",
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextStyles.kText14Brown,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      " Sign up",
                      style: AppTextStyles.kText14Primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
