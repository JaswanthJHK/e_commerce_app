import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/core/sizes.dart';
import 'package:e_commerce_app/features/presentation/pages/home_page.dart';
import 'package:e_commerce_app/features/presentation/pages/login_page.dart';
import 'package:e_commerce_app/features/presentation/widget/commonText.dart';
import 'package:e_commerce_app/features/presentation/widget/cusotme_button.dart';
import 'package:e_commerce_app/features/presentation/widget/custome_appbar.dart';
import 'package:e_commerce_app/features/presentation/widget/custome_textfieled.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: const CustomeAppbarWidget(
        leadingIcon: Icons.arrow_back_ios,
        treaibool: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AppSizes.sizeFifty,
              Text(
                'Create Account!',
                style: TextStyle(
                    color: AppColors.primaryclr,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Let's begin new journey",
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              AppSizes.sizeFifty,
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonText(text: 'Your Name'),
                      const CustomeTextFiled(
                          controller: null,
                          hintText: 'Name',
                          icon: Icons.person_2_outlined),
                      AppSizes.sizeTwenty,
                      const CommonText(text: 'Email Address'),
                      const CustomeTextFiled(
                          controller: null,
                          hintText: 'Email',
                          icon: Icons.mail),
                      AppSizes.sizeTwenty,
                      const CommonText(text: 'Password'),
                      const CustomeTextFiled(
                          controller: null,
                          hintText: 'password',
                          icon: Icons.password),
                      AppSizes.sizeTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style:
                                TextStyle(color: AppColors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      AppSizes.sizeThirty,
                      const CustomeButton(text: 'Login',page: HomePage(),),
                      AppSizes.sizeTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Already have an Account?",
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>const LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              "LogIn",
                              style: TextStyle(color: AppColors.primaryclr),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
