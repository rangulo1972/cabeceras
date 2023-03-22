import 'package:cabeceras/app/presentation/global/colors.dart';
import 'package:cabeceras/app/presentation/global/routes/routes.dart';
import 'package:cabeceras/app/presentation/pages/page_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //! instanciamos una lista del tipo PageData para poder colocar las rutas de
  //! los diferentes tipos de cabaceras a mostrar en el proyecto
  final List<PageData> _pages = [
    PageData(
      name: Routes.cuadrado,
      label: "Cabecera Cuadrada",
    ),
    PageData(
      name: Routes.borde,
      label: "Cabecera Bordes Redondeados",
    ),
    PageData(
      name: Routes.curvo,
      label: "Cabecera Bordes Curvos",
    ),
    PageData(
      name: Routes.diagonal,
      label: "Cabecera Borde Diagonal",
    ),
    PageData(
      name: Routes.multicurvoA,
      label: "Cabecera Multicurvo Arriba",
    ),
    PageData(
      name: Routes.multicurvoB,
      label: "Cabecera Multicurvo Abajo",
    ),
    PageData(
      name: Routes.multicurvo,
      label: "Cabecera Multicurvo doble",
    ),
    PageData(
      name: Routes.pico,
      label: "Cabecera Pico",
    ),
    PageData(
      name: Routes.triangular,
      label: "Cabecera Triangular",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        title: const Center(
          child: Text("Tipo de Cabeceras"),
        ),
      ),
      body: ListView.builder(
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          final data = _pages[index];
          return ListTile(
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            title: Text(
              data.label,
              style: const TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, data.name);
            },
          );
        },
      ),
    );
  }
}
