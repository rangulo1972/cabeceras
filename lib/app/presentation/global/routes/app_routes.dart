import 'package:flutter/material.dart';

import 'package:cabeceras/app/presentation/global/widgets/header_triangular.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_pico.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_multicurvo_abajo.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_multicurvo_arriba.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_multicurvo.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_diagonal.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_curvo.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_borde_redondeado.dart';
import 'package:cabeceras/app/presentation/global/widgets/header_cuadrado.dart';
import 'package:cabeceras/app/presentation/global/routes/routes.dart';
import 'package:cabeceras/app/presentation/pages/home_page.dart';

//! haciendo uso de datos genéricos para poder construir nuestra ModelRoute
//! y poder realizar el llamado a las páginas correspondientes.

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

//! indicamos que tipo de dato retornará el GET
Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    //! definimos las páginas que se navegará en el proyecto
    //! motivo por el cual importamos el archivo routes.dart
    Routes.home: (context) => HomePage(),
    Routes.borde: (context) => const HeaderBordeRedondeado(),
    Routes.cuadrado: (context) => HeaderCuadrado(),
    Routes.curvo: (context) => const HeaderCurvoPage(),
    Routes.diagonal: (context) => const HearderDiagonalPage(),
    Routes.multicurvoA: (context) => const HeaderMulticurvoArriba(),
    Routes.multicurvoB: (context) => const HeaderMulticurvoAbajo(),
    Routes.multicurvo: (context) => const HearderMulticurvoPage(),
    Routes.pico: (context) => const HeaderPico(),
    Routes.triangular: (context) => const HeaderTriangular(),
  };
}
