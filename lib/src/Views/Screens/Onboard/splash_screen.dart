import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      if(mounted){
          Get.offNamed(Appnames.language);
      }
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimage.splash),
            fit: BoxFit.fill)
        ),
      ),
    );
  }
}