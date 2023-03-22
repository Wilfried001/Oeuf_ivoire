import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/screen/payement/validate_payement_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';

class payementPage extends StatefulWidget {
  const payementPage({super.key});

  @override
  State<payementPage> createState() => _payementPageState();
}

class _payementPageState extends State<payementPage> {
  String? payementMethode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        width: width(context) * 0.9,
        title: "Passer au payement",
        onPressed: () {
          route(context, ValidatePayementPage());
        },
        titleColor: Config.colors.whithColor,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Methode de payement",
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
        padding: const EdgeInsets.only(top: 10.0, left: 15),
        child: Container(
          height: height(context) * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seclectionnez votre Methode de payement",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ajouter nouveau service",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(Config.asset.orangeMoney),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("ORANGE MONEY"),
                          ],
                        ),
                        value: "orange money",
                        groupValue: payementMethode,
                        onChanged: (value) {
                          setState(() {
                            payementMethode = value.toString();
                          });
                        },
                      ),
                      Divider(),
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(Config.asset.mtnMoney),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("MTN MONEY"),
                          ],
                        ),
                        value: "mtn",
                        groupValue: payementMethode,
                        onChanged: (value) {
                          setState(() {
                            payementMethode = value.toString();
                          });
                        },
                      ),
                      Divider(),
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(Config.asset.moovMoney),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("MOOV MONEY"),
                          ],
                        ),
                        value: "moov",
                        groupValue: payementMethode,
                        onChanged: (value) {
                          setState(() {
                            payementMethode = value.toString();
                          });
                        },
                      ),
                      Divider(),
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(Config.asset.wave),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("WAVE"),
                          ],
                        ),
                        value: "wave",
                        groupValue: payementMethode,
                        onChanged: (value) {
                          setState(() {
                            payementMethode = value.toString();
                          });
                        },
                      )
                    ],
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
