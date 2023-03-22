import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';

class HearderMulticurvoPage extends StatelessWidget {
  const HearderMulticurvoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _HeaderMulticurvoPainter(),
            ),
          ),
        ),
        const CustomTextBotton(),
      ],
    );
  }
}

class _HeaderMulticurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(150, 80), radius: 180);
    //* instanciamos un objeto de la clase variante de LinearGradient
    final Gradient gradiente = LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      //* es requerido una lista de colores
      colors: [
        //kBrandPrimaryColor,
        kBrandSecondaryColor,
        kBrandTertiaryColor,
      ],
    );

    //* instanciamos el objeto pencil para que realice el dibujo
    final pencil = Paint()..shader = gradiente.createShader(rect);
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
    //! los primeros dos valores representan el punto del eje de curvatura
    //! los dos últimos representan el punto de la derecha
    camino.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    camino.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    camino.lineTo(size.width, 0);

    //! parte inferior de la pantalla
    camino.moveTo(0, size.height);
    camino.lineTo(0, size.height * 0.75);
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
