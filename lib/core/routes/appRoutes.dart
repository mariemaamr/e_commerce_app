import 'package:e_commerce_app/core/routes/pageRouteNames.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/auth/login/login_page.dart';
import '../../ui/auth/register/sign_up.dart';
import '../../ui/splashScreen/splashScren.dart';


abstract class AppRoutes{
  static Route onGeneratedRoute(RouteSettings settings){
    switch(settings.name){
      case PagesRouteNames.splash:
        return MaterialPageRoute(builder:(context) => SplashScreen(),
            settings: settings
        );
      case PagesRouteNames.loginRoute:
        return MaterialPageRoute(builder:(context) => LoginPage(),
            settings: settings
        );
      case PagesRouteNames.siggnUpRoute:
        return MaterialPageRoute(builder:(context) => SignUp(),
            settings: settings
        );




      default:
        return MaterialPageRoute(builder:(context) => SplashScreen(),
            settings: settings
        );

    }
  }
}

