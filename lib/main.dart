import 'package:flutter/material.dart';
import 'package:widget_formato/config/router/app_router.dart';
import 'package:widget_formato/config/theme/app_theme.dart';
//import 'package:widget_formato/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: Apptheme(selectedColor: 3).getTheme(),
    );
  }
}



/*
1navegacion entre pantallas
2nuevos widget
 a.botones y sus variantes
 b.botones personalizados

 c.
 */