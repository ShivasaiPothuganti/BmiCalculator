// ignore_for_file: prefer_const_constructors

import 'package:bmicalculator/ResusableCard.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import './ResultsPage.dart';
import 'constants.dart';
import './CalculateBMI.dart';

class ResultPage extends StatelessWidget {
 

 final String bmiResult;
 final String resultText;
 final String interpretation;

 ResultPage({required this.interpretation,required this.resultText,required this.bmiResult});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBackgroundColor,
        title: Text("Result Page",
          style: TextStyle(fontSize: 23),
          textAlign: TextAlign.center
        ),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text('Your Result',
              
              style: Ktitle,),
              
            )
          ),
          Expanded(
            flex: 5,
            child: CustomCard(colour: activatedColor,cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  resultText.toString().toUpperCase(),
                  style: TextStyle( color: Color(0XFF24D876) ,fontSize: 22.0,fontWeight: FontWeight.bold),
                ),
                Text(
                  bmiResult.toString(),
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  
                  interpretation.toString().toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )
              ],
            ),)),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 60,
                width: double.infinity,
                color: bottombarBackgroundColor,
                child: Center(
                  child: Text(
                    'RE CALCULATE',
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                ),
              ),
            )
        ],
      )
    );
  }
}