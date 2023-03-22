import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:flutter/material.dart';

class CustomTextBotton extends StatelessWidget {
  const CustomTextBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: kBrandPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text(
            "Return",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
