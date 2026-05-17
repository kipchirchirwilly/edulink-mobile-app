import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(
      obscureText: obscureText,

      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: const TextStyle(
          color: Colors.black54,
        ),

        prefixIcon: Icon(
          prefixIcon,
          color: const Color(0xFF6F35A5),
        ),

        suffixIcon: suffixIcon,

        filled: true,
        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(
          vertical: 22,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}