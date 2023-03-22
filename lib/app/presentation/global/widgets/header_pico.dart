import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';

class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _HeaderPicoPainter(),
            ),
          ),
        ),
        const CustomTextBotton(),
      ],
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //* instanciamos el objeto pencil para que realice el dibujo
    final pencil = Paint();
    //* propiedades del pencil
    pencil.color = kBrandPrimaryColor;
    // //* propiedad para que rellene todo el lienzo
    pencil.style = PaintingStyle.fill;
    //* porpiedad para que solo dibuje los bordes
    //! usado si es que solamente se dibujará contornos
    // pencil.style = PaintingStyle.stroke;
    //* propiedad del grosor del pencil
    //! acá se especifica que se rellenará todo el contorno dibujado
    pencil.strokeWidth = 20;

    //* instanciamos objeto de indicará el camino a recorrer el pencil
    final camino = Path();

    //! parte superior de la pantalla
    //!(x,y)
    camino.lineTo(0, size.height * 0.25);
    camino.lineTo(size.width * 0.5, size.height * 0.30);
    camino.lineTo(size.width, size.height * 0.25);
    camino.lineTo(size.width, 0);
    //* acá indicamos al pencil que comience a dibujar
    canvas.drawPath(camino, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
