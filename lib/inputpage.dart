import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flash_app/resultpage.dart';
import 'calc_brain.dart';

class inputValues extends StatefulWidget {
  static const String id = 'inputValues';

  @override
  _inputValuesState createState() => _inputValuesState();
}

class _inputValuesState extends State<inputValues> {
  int heightMeter = 170;
  double heightFeet = 5.8;
  int weightKg = 60;
  int weightPound = 130;
  int toggleHeight = 0;
  int toggleWeight = 0;
  Color selectedColor = Colors.redAccent;
  Color unselectedColor = Colors.black;
  Color unselectedBorderColor = Colors.grey;
  Color selectedBorderColor = Colors.redAccent;
  Color unselectedFontColor = Colors.redAccent;
  Color selectedFontColor = Colors.white;

  List<String> months = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'June',
    'July',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          'ENTER YOUR DETAILS',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                child: Text(
                  'DOB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 10.0, 20.0, 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: CarouselSlider.builder(
                        itemCount: 31,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                          child: Text(
                            (itemIndex + 1).toString(),
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 25.0),
                          ),
                        ),
                        options: CarouselOptions(
                            scrollDirection: Axis.vertical,
                            enlargeCenterPage: true,
                            viewportFraction: 0.25,
                            initialPage: 15,
                            aspectRatio: 2.0,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: CarouselSlider.builder(
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                          child: Text(
                            months[itemIndex],
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 25.0),
                          ),
                        ),
                        options: CarouselOptions(
                            scrollDirection: Axis.vertical,
                            enlargeCenterPage: true,
                            viewportFraction: 0.25,
                            initialPage: 1,
                            aspectRatio: 16 / 9,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: CarouselSlider.builder(
                        itemCount: 70,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                          child: Text(
                            (itemIndex + 1960).toString(),
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 25.0),
                          ),
                        ),
                        options: CarouselOptions(
                            scrollDirection: Axis.vertical,
                            enlargeCenterPage: true,
                            viewportFraction: 0.25,
                            initialPage: 35,
                            aspectRatio: 16 / 9,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: Container(
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleHeight = 0;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        color:
                            toggleHeight == 0 ? selectedColor : unselectedColor,
                        border: Border.all(
                          color: toggleHeight == 0
                              ? selectedBorderColor
                              : unselectedBorderColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'CM',
                          style: TextStyle(
                            color: toggleHeight == 0
                                ? selectedFontColor
                                : unselectedFontColor,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleHeight = 1;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        color:
                            toggleHeight == 1 ? selectedColor : unselectedColor,
                        border: Border.all(
                            color: toggleHeight == 1
                                ? selectedBorderColor
                                : unselectedBorderColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Feet',
                          style: TextStyle(
                            color: toggleHeight == 1
                                ? selectedFontColor
                                : unselectedFontColor,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.redAccent,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 9,
                child: CarouselSlider.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int itemIndexH,
                          int pageViewIndex) =>
                      Container(
                    child: Text(
                      toggleHeight == 0
                          ? (itemIndexH + 120).toString()
                          : ((itemIndexH + 120) * 0.032808).toStringAsFixed(2),
                      style: TextStyle(color: Colors.redAccent, fontSize: 30.0),
                    ),
                  ),
                  options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: true,
                      viewportFraction: 0.4,
                      initialPage: 50,
                      aspectRatio: 16 / 9,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      onPageChanged: (itemIndexH, _) {
                        setState(() {
                          if (toggleHeight == 0) {
                            heightMeter = itemIndexH + 120;
                            print(heightMeter);
                          } else {
                            heightFeet =
                                ((itemIndexH + 120) * 0.032808).toDouble();

                            print(heightFeet);
                          }
                        });
                      }),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: Container(
                    child: Text(
                      'WEIGHT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleWeight = 0;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        color:
                            toggleWeight == 0 ? selectedColor : unselectedColor,
                        border: Border.all(
                            color: toggleWeight == 0
                                ? selectedBorderColor
                                : unselectedBorderColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Kg',
                          style: TextStyle(
                            color: toggleWeight == 0
                                ? selectedFontColor
                                : unselectedFontColor,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleWeight = 1;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        color:
                            toggleWeight == 1 ? selectedColor : unselectedColor,
                        border: Border.all(
                            color: toggleWeight == 1
                                ? selectedBorderColor
                                : unselectedBorderColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Pounds',
                          style: TextStyle(
                            color: toggleWeight == 1
                                ? selectedFontColor
                                : unselectedFontColor,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 9,
                child: CarouselSlider.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int itemIndexW,
                          int pageViewIndex) =>
                      Container(
                    child: Text(
                      toggleWeight == 0
                          ? (itemIndexW + 20).toString()
                          : ((itemIndexW + 20) * 2.2).round().toString(),
                      style: TextStyle(color: Colors.redAccent, fontSize: 30.0),
                    ),
                  ),
                  options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: true,
                      viewportFraction: 0.4,
                      initialPage: 50,
                      aspectRatio: 16 / 9,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      onPageChanged: (itemIndexW, _) {
                        setState(() {
                          if (toggleWeight == 0) {
                            weightKg = itemIndexW + 20;
                            print(weightKg);
                          } else {
                            weightPound = ((itemIndexW + 20) * 2.2).round();
                            print(weightPound);
                          }
                        });
                      }),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_drop_up,
                size: 50.0,
                color: Colors.redAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Material(
                  elevation: 5.0,
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.3,
                    onPressed: () {
                      setState(() {
                        CalculatorBrain calc = CalculatorBrain(
                            toggleH: toggleHeight,
                            toggleW: toggleWeight,
                            heightFt: heightFeet,
                            heightM: heightMeter,
                            weightKg: weightKg,
                            weightLb: weightPound);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => output(
                                bmiResult: calc.calculateBMI(),
                                url: calc.getVideo(),
                                resultText: calc.getResult()),
                          ),
                        );
                      });
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
