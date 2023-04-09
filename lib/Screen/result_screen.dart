import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'myhome_page.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.result,
      required this.interPolation,
      required this.calculate});
  final String result;
  final String interPolation;
  final String calculate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculators"),
        leading: Icon(FontAwesomeIcons.medal),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.all(15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color.fromARGB(26, 102, 99, 117),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Fetch Result

                    Text(
                      result,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500),
                    ),

                    Text(
                      calculate,
                      style: kCounterFont,
                    ),

                    Text(
                      interPolation,
                      textAlign: TextAlign.center,
                      style: klaabelTextstyle,
                    ),
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              height: 80.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 87, 25, 138),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10))),
              child: const Center(
                  child: Text(
                "Re-Calculates",
                style: TextStyle(fontSize: 22),
              )),
            ),
          )
        ],
      ),
    );
  }
}
