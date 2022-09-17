import 'dart:async';

import 'package:coreflutterapp/presentation/resources/assets_manager.dart';
import 'package:coreflutterapp/presentation/resources/color_manager.dart';
import 'package:coreflutterapp/presentation/resources/constant_manager.dart';
import 'package:coreflutterapp/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
Timer? _timer ;
_startDelay(){
  _timer =Timer(const Duration(seconds: AppConstants.splashDelay),_goNextView);
}
_goNextView(){
  Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
}
@override
void initState(){
  super.initState();
  _startDelay();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkGreenJungle,
      body: const Center(child:  Image(image: AssetImage(ImageAssets.splashLogo),)),
    );
  }

  @override
  void dispose(){
  _timer?.cancel();
  super.dispose();
  }
}
