import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/auth/login_page.dart';
import 'package:oeuf_ivoire/screen/auth/verification_compte.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        "Inscription",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CtextField(
                              raduis: 10,
                              hint: "Nom",
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 1,
                            child: CtextField(
                              raduis: 10,
                              hint: "Prénoms",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CtextField(
                        hint: 'Numero de telephone',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CtextField(
                        hint: 'Mot de passe',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CButton(
                          title: "INSCRIPTION",
                          onPressed: () {
                            route(context, VerificationCompte());
                          }),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous avez déja un compte?",
                      style: TextStyle(color: Config.colors.textColor),
                    ),
                    TextButton(
                      onPressed: () {
                        route(context, LoginPage());
                      },
                      child: Text(
                        "Connectez-vous",
                        style: TextStyle(
                            color: Config.colors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
