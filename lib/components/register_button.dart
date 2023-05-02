import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final Function()? onTap;

  const RegisterButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Color(0xFF92C75E),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Register",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}