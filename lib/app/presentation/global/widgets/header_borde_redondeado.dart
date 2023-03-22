import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';
import 'package:cabeceras/app/presentation/global/colors.dart';

class HeaderBordeRedondeado extends StatelessWidget {
  const HeaderBordeRedondeado({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          body: Container(
              height: screenSize.height * 0.25,
              decoration: BoxDecoration(
                color: kBrandPrimaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              )),
        ),
        const CustomTextBotton(),
      ],
    );
  }
}
