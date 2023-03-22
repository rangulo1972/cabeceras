import 'package:flutter/material.dart';

import 'package:cabeceras/app/presentation/global/routes/app_routes.dart';
import 'package:cabeceras/app/presentation/global/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cabeceras',
      initialRoute: Routes.home,
      routes: appRoutes,
    );
  }
}
