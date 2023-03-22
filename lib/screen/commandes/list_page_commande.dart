import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/widgets/button.dart';
import 'package:oeuf_ivoire/widgets/textField.dart';

class ListCommandePage extends StatefulWidget {
  const ListCommandePage({super.key});

  @override
  State<ListCommandePage> createState() => _ListCommandePageState();
}

class _ListCommandePageState extends State<ListCommandePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Liste des commandes",
          style: TextStyle(
              fontSize: 20,
              color: Config.colors.textColor,
              fontFamily: "roboto"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
      ),
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 65,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: CtextField(
                          raduis: 10,
                          hint: "Recherches...",
                        )),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Config.colors.backgroundTextField,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.filter_alt_outlined,
                          size: 30,
                          color: Config.colors.grayColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Config.asset.plaquette),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Commande en gros",
                                    style: TextStyle(
                                        fontSize: width(context) * 0.025,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "40",
                                    style: TextStyle(
                                      fontSize: width(context) * 0.05,
                                      fontWeight: FontWeight.bold,
                                      color: Config.colors.grayColor,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date livraison",
                                        style: TextStyle(
                                          fontSize: width(context) * 0.025,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "10/20/2020",
                                        style: TextStyle(
                                            fontSize: width(context) * 0.025,
                                            fontWeight: FontWeight.bold,
                                            color: Config
                                                .colors.backgroundTextField),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Config.colors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "En cours",
                                          style: TextStyle(
                                            color: Config.colors.primaryColor,
                                            fontSize: width(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "2 160 000 FCFA",
                                      style: TextStyle(
                                        color: Config.colors.primaryColor,
                                        fontSize: width(context) * 0.03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    CButton(
                                      width: 110,
                                      height: 40,
                                      title: "Voir détais",
                                      sizeTitle: 11,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Config.asset.plaquette),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Commande en gros",
                                    style: TextStyle(
                                        fontSize: width(context) * 0.025,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "40",
                                    style: TextStyle(
                                      fontSize: width(context) * 0.05,
                                      fontWeight: FontWeight.bold,
                                      color: Config.colors.grayColor,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date livraison",
                                        style: TextStyle(
                                          fontSize: width(context) * 0.025,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "10/20/2020",
                                        style: TextStyle(
                                            fontSize: width(context) * 0.025,
                                            fontWeight: FontWeight.bold,
                                            color: Config
                                                .colors.backgroundTextField),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Config.colors.roseColor,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "Annuler",
                                          style: TextStyle(
                                            color: Config.colors.roseColor,
                                            fontSize: width(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "2 160 000 FCFA",
                                      style: TextStyle(
                                        color: Config.colors.primaryColor,
                                        fontSize: width(context) * 0.03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    CButton(
                                      width: 110,
                                      height: 40,
                                      title: "Voir détais",
                                      sizeTitle: 11,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Config.asset.plaquette),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Commande en gros",
                                    style: TextStyle(
                                        fontSize: width(context) * 0.025,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "40",
                                    style: TextStyle(
                                      fontSize: width(context) * 0.05,
                                      fontWeight: FontWeight.bold,
                                      color: Config.colors.grayColor,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date livraison",
                                        style: TextStyle(
                                          fontSize: width(context) * 0.025,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "10/20/2020",
                                        style: TextStyle(
                                            fontSize: width(context) * 0.025,
                                            fontWeight: FontWeight.bold,
                                            color: Config
                                                .colors.backgroundTextField),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "En cours",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: width(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "2 160 000 FCFA",
                                      style: TextStyle(
                                        color: Config.colors.primaryColor,
                                        fontSize: width(context) * 0.03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    CButton(
                                      width: 110,
                                      height: 40,
                                      title: "Voir détais",
                                      sizeTitle: 11,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Config.colors.whithColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Config.asset.plaquette),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Commande en gros",
                                    style: TextStyle(
                                        fontSize: width(context) * 0.025,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "40",
                                    style: TextStyle(
                                      fontSize: width(context) * 0.05,
                                      fontWeight: FontWeight.bold,
                                      color: Config.colors.grayColor,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date livraison",
                                        style: TextStyle(
                                          fontSize: width(context) * 0.025,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "10/20/2020",
                                        style: TextStyle(
                                            fontSize: width(context) * 0.025,
                                            fontWeight: FontWeight.bold,
                                            color: Config
                                                .colors.backgroundTextField),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "En cours",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: width(context) * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "2 160 000 FCFA",
                                      style: TextStyle(
                                        color: Config.colors.primaryColor,
                                        fontSize: width(context) * 0.03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    CButton(
                                      width: 110,
                                      height: 40,
                                      title: "Voir détais",
                                      sizeTitle: 11,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
