import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result_Page extends StatelessWidget {
  final bool isMale;
  final double sliderChange;
  final int weightValue;
  final int ageValue;
  final double result;
  const result_Page(
      {required this.isMale,
      required this.sliderChange,
      required this.weightValue,
      required this.ageValue,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'BMI Result.',
            ),
          // Icon(Icons.settings),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30.0),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //       Text(
                            //       'Gender :' + result.toString(),
                            //   style:
                            //   TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                            // ),
                            if (isMale)
                              Text(
                                'Gender : Male',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.grey[800]),
                              )
                            else
                              Text(
                                'Gender :Female',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.grey[800]),
                              ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Age :' + ageValue.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.grey[800]),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  if (result < 18)
                                    Text(
                                      'UNDER WEIGHT',
                                      style: TextStyle(
                                          color: Colors.blue[800],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  else if (result >= 18 && result < 25.0)
                                    Text(
                                      'NORMAL',
                                      style: TextStyle(
                                          color: Colors.green[800],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  else if (result >= 25 && result < 30)
                                    Text(
                                      'WEIGHT GAIN',
                                      style: TextStyle(
                                          color: Colors.yellow[800],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  else if (result >= 30 && result < 40)
                                    Text(
                                      'OBESITY',
                                      style: TextStyle(
                                          color: Colors.red[800],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  else if (result >= 40)
                                    Text(
                                      'MORBID OBSITY',
                                      style: TextStyle(
                                          color: Colors.purple[800],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                ],
                              ),
                            ),
                            Text(
                              'Result :' + result.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
