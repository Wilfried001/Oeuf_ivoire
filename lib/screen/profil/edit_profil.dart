import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class EditProfilUser extends StatefulWidget {
  const EditProfilUser({super.key});

  @override
  State<EditProfilUser> createState() => _EditProfilUserState();
}

class _EditProfilUserState extends State<EditProfilUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Editer Profil",
          style: TextStyle(
              fontSize: 20,
              color: Config.colors.textColor,
              fontFamily: "roboto"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SizedBox(
          width: width(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Config.asset.profil),
                          fit: BoxFit.cover),
                      border: Border.all(
                        color: Config.colors.primaryColor, //color of border
                        width: 5, //width of border
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Config.colors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.photo_camera,
                        color: Config.colors.whithColor,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  children: [
                    CtextField(hint: "Nom"),
                    SizedBox(
                      height: 15,
                    ),
                    CtextField(hint: "Prénom"),
                    SizedBox(
                      height: 15,
                    ),
                    CtextField(hint: "Teléphone"),
                    SizedBox(
                      height: 15,
                    ),
                    CtextField(hint: "Adresse email"),
                  ],
                ),
              ),
              CButton(title: "Modifier", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
