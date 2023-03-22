import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Modifier mot de passe",
          style: TextStyle(
              fontSize: 20,
              color: Config.colors.textColor,
              fontFamily: "roboto"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context) * 0.9,
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                        hint: 'Ancien mot de passe',
                      ),
                      SizedBox(
                        height: 10,
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
                CButton(title: "Rénitialisé", onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
