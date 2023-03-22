import 'package:flutter/material.dart';
import 'package:oeuf_ivoire/config/config.dart';
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/root_app.dart';
import 'package:oeuf_ivoire/screen/home/home_page.dart';
import 'package:oeuf_ivoire/widgets/button.dart';

class ValidatePayementPage extends StatelessWidget {
  const ValidatePayementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        width: width(context) * 0.9,
        title: "Continuer la commande",
        onPressed: () {
          route(context, const RootApp());
        },
        titleColor: Config.colors.whithColor,
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            route(context, const HomePage());
          },
          icon: Icon(Icons.home),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Config.colors.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.check,
                size: 70,
                color: Config.colors.whithColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              "Commande effectuer avec success",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                textAlign: TextAlign.center,
                " sed do eiusmod tempor incididuntut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
