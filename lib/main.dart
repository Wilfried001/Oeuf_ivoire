import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oeuf_ivoire/screen/SplashScreen.dart';
import 'package:oeuf_ivoire/screen/first-page.dart';
import 'package:oeuf_ivoire/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: const SplashWidget(
        nextPage: FirtPage(),
        child: SplashScreen(),
      ),
    );
  }
}
