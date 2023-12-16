import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.controller,
      required this.prefixIcon,
      this.callback,
      this.obscure,
      this.suffixIcon,
      this.toggleVisibilityCallback,
      super.key});
  final TextEditingController controller;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool? obscure;
  final Function(String value)? callback;
  final VoidCallback? toggleVisibilityCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.grey.withOpacity(0.2),
      child: TextField(
        onChanged: callback,
        obscureText: obscure ?? false,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: GestureDetector(
              onTap: toggleVisibilityCallback,
              child: Icon(
                suffixIcon,
                color: Colors.deepPurple,
              ),
            ),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.deepPurple,
            )),
      ),
    );
  }
}
