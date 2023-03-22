import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/auth/login_page.dart';
import 'package:oeuf_ivoire/screen/auth/register_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';

class FirtPage extends StatelessWidget {
  const FirtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: width(context),
          height: height(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "OEUF IVOIRE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Config.colors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Commandez œufs",
                        style: TextStyle(
                          fontSize: width(context) * 0.10,
                          fontWeight: FontWeight.w700,
                          color: Config.colors.textColor,
                        ),
                      ),
                      Text(
                        "comme vous le souhaitez !",
                        style: TextStyle(
                            fontSize: 16, color: Config.colors.grayColor),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: height(context) * 0.42,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Config.asset.oeuf),
                  ),
                ),
              ),
              Column(
                children: [
                  CButton(
                    title: "INSCRIPTION",
                    onPressed: () {
                      route(context, RegisterPage());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CButton(
                    title: "CONNEXION",
                    onPressed: () {
                      route(context, LoginPage());
                    },
                    titleColor: Config.colors.primaryColor,
                    sideWidth: 2,
                    color: Config.colors.whithColor,
                    sideColor: Config.colors.primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
