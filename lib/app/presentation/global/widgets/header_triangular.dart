import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _HeaderTriangularPainter(),
            ),
          ),
        ),
        const Positioned(
          right: 20,
          top: 100,
          child: CustomTextBotton(),
        ),
      ],
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
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

    //! dibujo de la diagonal triangular
    //* el pencil inicia en la posición (0,0)
    //* extremo intermedio parte de relleno del triangulodiagonal  lado izquierdo
    camino.lineTo(size.width, size.height);
    //* extremo final parte de relleno del triangulardiagonal lado izquierdo
    camino.lineTo(0, size.height);
    //* acá indicamos al pencil que comience a dibujar
    canvas.drawPath(camino, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
