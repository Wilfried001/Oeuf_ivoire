import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/auth/forgetPassword/renitialisation_passeword.dart';
import 'package:oeuf_ivoire/screen/home/home_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class RecuperationPasseword extends StatefulWidget {
  const RecuperationPasseword({super.key});

  @override
  State<RecuperationPasseword> createState() => _RecuperationPassewordState();
}

class _RecuperationPassewordState extends State<RecuperationPasseword> {
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
                        "Vérification d'identité",
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
                      Text(
                        "C'est quoi votre couleur préféré?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CtextField(
                        hint: 'Votre couleur',
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
                    title: "verification",
                    onPressed: () {
                      route(context, RenitialisationPassword());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
