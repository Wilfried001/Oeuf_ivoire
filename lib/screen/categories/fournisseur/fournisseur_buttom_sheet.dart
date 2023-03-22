import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class FournisseurButtomSheet extends StatelessWidget {
  const FournisseurButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.5,
      color: Config.colors.whithColor,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Config.asset.playstore,
                width: 45,
                height: 45,
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.clear,
                  size: 30,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Demande pour être  Fournisseur",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CtextField(
                hint: 'formulaire',
              ),
            ],
          ),
          SizedBox(
            width: width(context),
            child: CButton(
              title: "soumettre",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
