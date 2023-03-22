import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:get/get.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/categories/demi_gros.dart';
import 'package:oeuf_ivoire/screen/categories/details.dart';
import 'package:oeuf_ivoire/screen/categories/en_gros_page.dart';
import 'package:oeuf_ivoire/screen/categories/fournisseur/fournisseur_buttom_sheet.dart';
import 'package:oeuf_ivoire/widgets/button.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10, right: 20, left: 20),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: height(context) * 0.26,
                    width: width(context),
                    decoration: BoxDecoration(
                      color: Config.colors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width(context) * 0.8,
                          child: Text(
                            "Possible de dévenir fournisseur en cliquant sur le bouton ",
                            style: TextStyle(
                              fontSize: height(context) * 0.029,
                              fontWeight: FontWeight.bold,
                              color: Config.colors.whithColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CButton(
                          width: width(context) * 0.4,
                          height: 50,
                          color: Config.colors.whithColor,
                          title: "Devenir fournisseur",
                          titleColor: Config.colors.primaryColor,
                          sizeTitle: 10,
                          onPressed: () {
                            Get.bottomSheet(FournisseurButtomSheet());
                          },
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -30,
                    child: Image(
                      width: 210,
                      image: AssetImage(
                        Config.asset.plaquette,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Catégories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height(context) * 0.35,
                          width: width(context) * 0.46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Config.colors.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "En Gros",
                                  style: TextStyle(
                                    fontSize: width(context) * 0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Config.colors.whithColor,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "La commande se fait à partir de 10 cartons. Pour les commandes en gros:",
                                      style: TextStyle(
                                        color: Config.colors.whithColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '1 carton = 54 000 FCFA',
                                      style: TextStyle(
                                          color: Config.colors.whithColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    route(context, EnGrosPage());
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Config.colors.whithColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: Config.colors.primaryColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height(context) * 0.32,
                          width: width(context) * 0.42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Config.colors.whithColor,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(195, 187, 187, 187),
                                    spreadRadius: 1,
                                    blurRadius: 15)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "1/2 Gros",
                                style: TextStyle(
                                  fontSize: width(context) * 0.06,
                                  fontWeight: FontWeight.bold,
                                  color: Config.colors.primaryColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "La commande se fait à partir de 1 à 9 cartons.",
                                      style: TextStyle(
                                        color: Config.colors.textColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '1 carton = 57 200 FCFA',
                                      style: TextStyle(
                                          color: Config.colors.textColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  route(context, DemisGrosPage());
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Config.colors.primaryColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Config.colors.whithColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 8, left: 8),
                          height: height(context) * 0.32,
                          width: width(context) * 0.42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Config.colors.whithColor,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(195, 187, 187, 187),
                                    spreadRadius: 1,
                                    blurRadius: 15)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Fournisseur",
                                style: TextStyle(
                                  fontSize: width(context) * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Config.colors.primaryColor,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                      "Voulez-vous devenir fournisseur, veuillez cliquez sur le bouton ci-dessous"),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Get.bottomSheet(FournisseurButtomSheet());
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Config.colors.primaryColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Config.colors.whithColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: height(context) * 0.35,
                          width: width(context) * 0.46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Config.colors.primaryColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Détails",
                                style: TextStyle(
                                  fontSize: width(context) * 0.06,
                                  fontWeight: FontWeight.bold,
                                  color: Config.colors.whithColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "La commande se fait à partir de 1 à 27 plaquettes.",
                                      style: TextStyle(
                                        color: Config.colors.whithColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '1 plaquette = 2 300 FCFA',
                                      style: TextStyle(
                                          color: Config.colors.whithColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  route(context, DetailsPage());
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Config.colors.whithColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Config.colors.primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
