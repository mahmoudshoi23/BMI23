import 'package:bmiabdallah/bmi_screen.dart';
import 'package:bmiabdallah/componment/componments.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('login pagesss'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                defaultTextField(
                    hintText: 'Email Adress', putYourIcon: Icon(Icons.email)),
                SizedBox(
                  height: 15,
                ),
                defaultTextField(
                    hintText: 'Password',
                    putYourIcon: Icon(Icons.remove_red_eye)),
                SizedBox(
                  height: 30,
                ),
                // defaultBotton(myfunction: () {
                //
                //  Navigator.push(context, MaterialPageRoute(builder:(context) =>  BmiScreen()));
                // }, text: 'logIn',)
                MaterialButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BmiScreen()));},child: Text('hola'),

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
