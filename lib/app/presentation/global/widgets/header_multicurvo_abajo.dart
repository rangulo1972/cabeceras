import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';

class HeaderMulticurvoAbajo extends StatelessWidget {
  const HeaderMulticurvoAbajo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _HeaderMulticurvoAbajoPainter(),
            ),
          ),
        ),
        const CustomTextBotton(),
      ],
    );
  }
}

class _HeaderMulticurvoAbajoPainter extends CustomPainter {
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

    //! parte inferior de la pantalla
    //!(x,y)
    camino.moveTo(0, size.height);
    camino.lineTo(0, size.height * 0.75);
    //! los primeros dos valores representan el punto del eje de curvatura
    //! los dos últimos representan el punto de la derecha
    camino.quadraticBezierTo(size.width * 0.25, size.height * 0.65,
        size.width * 0.5, size.height * 0.75);
    camino.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.75);
    camino.lineTo(size.width, size.height);
    //* acá indicamos al pencil que comience a dibujar
    canvas.drawPath(camino, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
