import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
          ),
          Image.asset(
            Config.asset.logo,
            width: width(context) * 0.9,
          ),
          Text(
            "Chargement...",
            style: TextStyle(color: Config.colors.grayColor),
          ),
        ],
      ),
    );
  }
}
