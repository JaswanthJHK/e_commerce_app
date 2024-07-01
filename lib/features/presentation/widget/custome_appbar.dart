import 'package:e_commerce_app/core/colors.dart';
import 'package:flutter/material.dart';

class CustomeAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final bool leadbool;
  final String? title;
  final bool treaibool;
  final IconData? trailingIcon;
  const CustomeAppbarWidget({
    this.leadingIcon,
    this.leadbool = false,
    this.title,
    this.trailingIcon,
    this.treaibool = false,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leadbool?
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.secondaryclr,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      leadingIcon,
                      color: AppColors.primaryclr,
                      size: 20,
                    ),
                  ),
                ):SizedBox(width: 50,),
                
              Text(
                title ?? '',
                style: TextStyle(
                  color: AppColors.primaryclr,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (treaibool)
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.secondaryclr,
                  child: Icon(
                    trailingIcon,
                    color: AppColors.primaryclr,
                    size: 20,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}
