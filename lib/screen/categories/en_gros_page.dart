import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/payement/payement_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';

class EnGrosPage extends StatefulWidget {
  const EnGrosPage({super.key});

  @override
  State<EnGrosPage> createState() => _EnGrosPageState();
}

class _EnGrosPageState extends State<EnGrosPage> {
  int _counter = 27;
  String _categorie = "moyens";
  DateTime dateChose = DateTime.now();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.colors.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Commande en gros",
          style: TextStyle(
              color: Config.colors.textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Config.colors.whithColor,
        iconTheme: IconThemeData(color: Config.colors.textColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: width(context),
                height: height(context) * 0.76,
                decoration: BoxDecoration(
                  color: Config.colors.whithColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Config.colors.whithColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset: Offset(4, 4),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.filter_alt,
                                  color: Config.colors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Column(
                            children: [
                              Container(
                                height: height(context) * 0.33,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      Config.asset.plaquette,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Carton d’oeuf ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (_counter >= 28) {
                                                _decrementCounter();
                                              }
                                            },
                                            icon: Icon(
                                              Icons.do_not_disturb_on_rounded,
                                              size: 40,
                                              color: Config.colors.primaryColor,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '$_counter',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _incrementCounter();
                                            },
                                            icon: Icon(
                                              Icons.add_circle,
                                              size: 40,
                                              color: Config.colors.primaryColor,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation "),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.local_shipping_rounded,
                                    size: 30,
                                    color: Config.colors.backgroundTextField,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Livraison",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Config.colors.backgroundTextField,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "2 000 FCFA",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Config.colors.primaryColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Date de livraison",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(3000),
                                  ).then((value) {
                                    if (value == null) {
                                      return;
                                    }
                                    setState(() {
                                      dateChose = value;
                                    });
                                  });
                                },
                                child: Text(
                                  "${dateChose}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Config.colors.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Config.colors.whithColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Grand",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Moyens",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Config.colors.backgroundTextField),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Prix Total:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Config.colors.whithColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "4 000 FCFA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Config.colors.whithColor),
                    )
                  ],
                ),
                CButton(
                  title: "Passer au payement",
                  sizeTitle: width(context) * 0.035,
                  onPressed: () {
                    route(context, payementPage());
                  },
                  width: width(context) * 0.5,
                  color: Config.colors.whithColor,
                  titleColor: Config.colors.primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
