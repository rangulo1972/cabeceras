import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:cabeceras/app/presentation/global/widgets/custom_text_botton.dart';
import 'package:flutter/material.dart';

class HeaderCurvoPage extends StatelessWidget {
  const HeaderCurvoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            //! establecemos el lienzo de dibujo en toda la pantalla
            height: double.infinity,
            width: double.infinity,
            //! creamos el widget que realizará el dibujo
            child: CustomPaint(
              //! creamos la clase privada que realizará el trazo
              painter: _HeaderCurvoPainter(),
            ),
          ),
        ),
        const CustomTextBotton(),
      ],
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  //! sobre escribimos los métodos que se tienen en la clase CustomPainter
  @override
  void paint(Canvas canvas, Size size) {
    //* instanciamos el objeto pencil para que se realice el dibujo
    final pencil = Paint();
    //* propiedades del pencil
    pencil.color = kBrandPrimaryColor;
    // //* propiedad para que rellene todo el lienzo
    pencil.style = PaintingStyle.fill;
    //* propiedad para que solo dibuje los bordes
    //! usado si es que solamente se dibujará contornos
    // pencil.style = PaintingStyle.stroke;
    //* propiedad del grosor del pencil
    //! acá se especifica que se rellenará todo el contorno dibujado
    pencil.strokeWidth = 20;

    //* instanciamos objeto de indicará el camino a recorrer el pencil
    final camino = Path();

    //* dibujo de la curva
    //!(x,y)
    camino.lineTo(0, size.height * 0.25);
    //! los primeros dos valores representan el punto del eje de curvatura
    //! los dos últimos representan el punto de la derecha
    camino.quadraticBezierTo(
        size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
    camino.lineTo(size.width, 0);
    //* acá indicamos al pencil que comience a dibujar
    canvas.drawPath(camino, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
