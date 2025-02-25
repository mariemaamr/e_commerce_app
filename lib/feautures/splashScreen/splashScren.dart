import 'package:e_commerce_app/core/utilis/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utilis/app_colors.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: AppColors.primaryColor,
   body: Column(
     children: [
       Image.asset(AppAssets.splashLogo)
     ],
   ),
 );
  }

}