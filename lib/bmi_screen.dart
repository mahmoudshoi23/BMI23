import 'dart:math';

import 'package:bmiabdallah/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double sliderChange = 110;
  int weightValue = 65;
  int ageValue = 20;
  Color? colorVar = Colors.grey[300];
  // double result =weightValue/pow(sliderChange, 2)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CalCulator'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                            print('pressed');
                          });
                          // print('male container is clicked');
                          // isMale=true;
                          // //colorVar =Colors.grey[300];
                        },
                        child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 90,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: isMale ? Colors.blue : Colors.grey[300],
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 90,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: isMale ? Colors.grey[300] : Colors.blue,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Height',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                //  sliderChange.toStringAsFixed(1),
                                '${sliderChange.round()}',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                              value: sliderChange,
                              max: 220.9,
                              min: 80,
                              onChanged: (value) {
                                setState(() {
                                  sliderChange = value;
                                });
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                //color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'WEIGHT KG',
                                  style: TextStyle(
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]),
                                ), //weight
                                Text(
                                  weightValue.toString(),
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (weightValue > 20) {
                                            weightValue = weightValue - 1;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (weightValue < 150) {
                                            weightValue = weightValue + 1;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'AGE ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]),
                                ), //weight
                                Text(
                                  ageValue.toString(),
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (ageValue > 15) {
                                            ageValue = ageValue - 1;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (ageValue < 95) {
                                            ageValue = ageValue + 1;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ) //data2
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  double result = weightValue / pow(sliderChange / 100, 2);
                  //print(result.round());
                  result=result.roundToDouble();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return result_Page(
                          ageValue: ageValue,
                          isMale: isMale,
                          result: result,
                          sliderChange: sliderChange,
                          weightValue: weightValue,
                        );
                      },
                    ),
                  );
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
