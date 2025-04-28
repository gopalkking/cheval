import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Routes/routes_page.dart';
import 'package:cheval/src/Views/Utlilies/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
   SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]
  );
  SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cheval',
      theme: Apptheme.lightTheme,
      themeMode: ThemeMode.system,
      getPages: AppRoutes.pages(),
      defaultTransition: Transition.rightToLeftWithFade,
      debugShowCheckedModeBanner: false,
      initialRoute: Appnames.splash,
      // home: const SplashScreen(),
    );
  }
}

