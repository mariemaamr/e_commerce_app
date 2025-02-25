import 'package:e_commerce_app/core/routes/pageRouteNames.dart';
import 'package:e_commerce_app/ui/splashScreen/splashScren.dart';
import 'package:flutter/material.dart';

import 'core/routes/appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: PagesRouteNames.splash,
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    );
  }
}