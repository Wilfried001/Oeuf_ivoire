import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/controllers/login_controller.dart';
import 'package:oeuf_ivoire/root_app.dart';
import 'package:oeuf_ivoire/screen/auth/forgetPassword/recuperation_passeword.dart';
import 'package:oeuf_ivoire/screen/auth/register_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  LoginController loginController = Get.put(LoginController());

  var isLogin = false.obs;
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
                        "Connexion",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CtextField(
                        textInputType: TextInputType.phone,
                        controller: loginController.phoneController,
                        hint: 'Numero de telephone',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CtextField(
                        textInputType: TextInputType.visiblePassword,
                        controller: loginController.passwordController,
                        hint: 'Mot de passe',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CButton(
                        title: "CONNEXION",
                        onPressed: () => loginController.loginWithPhone(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        onPressed: () {
                          route(context, RecuperationPasseword());
                        },
                        child: Text(
                          "Mot de passe oublier?",
                          style: TextStyle(
                              fontSize: 16, color: Config.colors.primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous n’avez pas de compte?",
                      style: TextStyle(color: Config.colors.textColor),
                    ),
                    TextButton(
                      onPressed: () {
                        route(context, RegisterPage());
                      },
                      child: Text(
                        "Inscrivez-vous",
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
