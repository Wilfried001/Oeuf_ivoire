import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final asset = _Asset();
}

class _Color {
  final primaryColor = Color(0xFFC48011);
  final secondaryColor = Color(0xFFF8B133);
  final roseColor = Color(0xFFE84E1B);
  final grayColor = Color(0xFFB1B1B1);
  final whithColor = Color(0xffFFFFFF);
  final textColor = Color(0xFF1D1D1B);
  final backgroundTextField = Color.fromARGB(75, 177, 177, 177);
  final blockBtn = Color.fromARGB(120, 196, 127, 17);
}

class _Asset {
  final logo = "assets/images/logo.png";
  final plaquette = "assets/images/Plaquette.png";
  final orangeMoney = "assets/images/orange.png";
  final mtnMoney = "assets/images/MTN.jpg";
  final profil = "assets/images/profil.jpg";
  final moovMoney = "assets/images/moov.jpg";
  final oeuf = "assets/images/oeuf.png";
  final playstore = "assets/images/playstore.png";
  final wave = "assets/images/wave.png";
}

class RadioTitleListeItem {
  String value;
  bool isSelectedRadio;
  RadioTitleListeItem(this.value, this.isSelectedRadio);
}
