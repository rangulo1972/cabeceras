import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';

import 'package:cabeceras/app/presentation/global/colors.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          body: Container(
            height: screenSize.height * 0.25,
            color: kBrandPrimaryColor,
          ),
        ),
        const CustomTextBotton(),
      ],
    );
  }
}
