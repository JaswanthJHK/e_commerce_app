import 'package:e_commerce_app/core/colors.dart';
import 'package:e_commerce_app/core/sizes.dart';
import 'package:e_commerce_app/features/presentation/widget/commonText.dart';
import 'package:e_commerce_app/features/presentation/widget/custome_appbar.dart';
import 'package:e_commerce_app/features/presentation/widget/custome_textfieled.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightGrey,
        appBar: const CustomeAppbarWidget(
          leadbool: false,
          title: 'UrbanThread',
          treaibool: true,
          trailingIcon: Icons.card_travel,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizes.sizeTwenty,
              CustomeTextFiled(
                  controller: null,
                  hintText: "Search here",
                  icon: Icons.search_outlined),
              AppSizes.sizeTwenty,
              CommonText(text: 'Best Sellers'),
              AppSizes.sizeThirty,
             Container(
              height: 200,
               child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildCards(),
                 separatorBuilder: (context, index) => AppSizes.sizeWidgthTwentyfive,
                  itemCount: 6),
             )
            ],
          ),
        ));
  }

  Widget buildCards() {
    return Container(
      color: Colors.amber,
      width: 200,
      height: 200,
      child: Column(
        children: [
          Image.asset('assets/images/blackUltraboost_23_check.jpg'),
          Text('hello'),
        ],
      ),
    );
  }
}
