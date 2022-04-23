import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'child.dart';
import 'reusable.dart';

void main() {
  runApp(MyApp());
}

enum gender { male, female }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon? iconadd;
  gender? selectedgender;
  double newvalue = 10;
  double weight = 60;
  double Age = 20;
  static const activecardcolor = Color.fromARGB(255, 19, 24, 29);
  static const inactivecardcolor = Color.fromARGB(255, 1, 1, 12);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(' BMI Calculator  '),
        ),
        body: Column(
          children: [
            Row(children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    print(' Female pressed ');
                    setState(() {
                      selectedgender = gender.female;
                    });
                  },
                  child: reusablewidget(
                    inHeight: 150.0,
                    inwidth: 100.0,
                    Color: selectedgender == gender.female
                        ? activecardcolor
                        : inactivecardcolor,
                    newchild: child(
                        newicon: Icon(
                          FontAwesomeIcons.venus,
                          size: 30.0,
                        ),
                        newtext: " Female "),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    print(' Male Pressed ');
                    setState(() {
                      selectedgender = gender.male;
                    });
                  },
                  child: reusablewidget(
                    inHeight: 150.0,
                    inwidth: 100.0,
                    Color: selectedgender == gender.male
                        ? activecardcolor
                        : inactivecardcolor,
                    newchild: child(
                        newicon: Icon(
                          FontAwesomeIcons.mars,
                          size: 30.0,
                        ),
                        newtext: " Male "),
                  ),
                ),
              ),
            ]),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 1, 1, 12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(' Height '),
                          Text(newvalue.round().toString()),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              activeTrackColor:
                                  Color.fromARGB(255, 223, 4, 124),
                              thumbColor: Color.fromARGB(255, 223, 4, 124),
                            ),
                            child: Slider(
                                value: newvalue,
                                min: 10,
                                max: 520,
                                onChanged: (value) {
                                  print(value);
                                  setState(() {
                                    newvalue = value;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 1, 1, 12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(" Height  "),
                        Text(weight.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print(' Weight ');
                                setState(() {
                                  weight++;
                                });
                              },
                              child: iconmethod(Icons.add),
                            ),
                            GestureDetector(
                              onTap: () {
                                print(' Weight ');
                                setState(() {
                                  weight--;
                                });
                              },
                              child: iconmethod(Icons.remove),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 1, 1, 12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(" Age "),
                        Text(Age.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print(' Age ');
                                setState(() {
                                  Age++;
                                });
                              },
                              child: iconmethod(Icons.add),
                            ),
                            GestureDetector(
                              onTap: () {
                                print(' Age  ');
                                setState(() {
                                  Age--;
                                });
                              },
                              child: iconmethod(Icons.remove),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.pink,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(" CALCULATE BMI ",
                              style: TextStyle(color: Colors.white))),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container iconmethod(iconadd) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Icon(
        iconadd,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
