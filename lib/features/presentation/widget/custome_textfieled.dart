import 'package:flutter/material.dart';

class CustomeTextFiled extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool isPasswordType;
  final IconData icon;

  const CustomeTextFiled({
    super.key,
    required this.controller,
    required this.hintText,
     this.isPasswordType =false,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      //enableSuggestions: !isPasswordType,
      //asautocorrect: !isPasswordType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
      ),
    );
  }
}
