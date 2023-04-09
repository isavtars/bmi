import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../calculatora_brain.dart';
import '../widgets/custome_icons.dart';
import '../widgets/resuable_card.dart';
import '../widgets/rounded_widgets.dart';
import 'result_screen.dart';

enum Gender { male, female }

//lets assum input Pages
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender? selectedGendeer;

//1=Male 2=Female
  int height = 170;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableWidgets(
                  onPress: () {
                    debugPrint("heloo");
                    setState(() {
                      debugPrint("heloo");

                      selectedGendeer = Gender.male;
                    });
                  },
                  width: 200.0,
                  height: 170.0,
                  color: selectedGendeer == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: CustomeIcon(
                    icons: FontAwesomeIcons.mars,
                    iconText: "MALE",
                  ),
                )),
                Expanded(
                  child: ReusableWidgets(
                    onPress: () {
                      setState(() {
                        selectedGendeer = Gender.female;
                      });
                    },
                    width: 200.0,
                    height: 170.0,
                    color: selectedGendeer == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: CustomeIcon(
                      icons: FontAwesomeIcons.venus,
                      iconText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableWidgets(
            width: double.maxFinite,
            height: 170.0,
            color: Color(0xFF1d1e33),
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: klaabelTextstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      "$height",
                      style: kCounterFont,
                    ),
                    Text("cm", style: kunderlabelTextstyle),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      inactiveTrackColor: Colors.white,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Colors.pink),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableWidgets(
                  width: 200.0,
                  height: 170.0,
                  color: Color(0xFF1d1e33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: klaabelTextstyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kCounterFont,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RounddeIconButton(
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icons: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RounddeIconButton(
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icons: FontAwesomeIcons.minus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableWidgets(
                  width: 200.0,
                  height: 170.0,
                  color: Color(0xFF1d1e33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: klaabelTextstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kCounterFont,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RounddeIconButton(
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                            icons: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RounddeIconButton(
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                            icons: FontAwesomeIcons.minus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain cala =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            result: cala.clcul(),
                            calculate: cala.level(),
                            interPolation: cala.interPolations(),
                          )));
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
                "Calculates",
                style: TextStyle(fontSize: 22),
              )),
            ),
          )
        ],
      ),
    );
  }
}
