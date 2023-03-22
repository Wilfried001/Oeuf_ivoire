import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/auth/login_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class RenitialisationPassword extends StatefulWidget {
  const RenitialisationPassword({super.key});

  @override
  State<RenitialisationPassword> createState() =>
      _RenitialisationPasswordState();
}

class _RenitialisationPasswordState extends State<RenitialisationPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context),
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height(context) * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Config.asset.playstore),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Rénitialisation de mot de passe",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CtextField(
                        hint: 'Nouveau mot de passe',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CtextField(
                        hint: 'Confirmé mot de passe',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CButton(
                    title: "Rénitialisé",
                    onPressed: () {
                      route(context, LoginPage());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
