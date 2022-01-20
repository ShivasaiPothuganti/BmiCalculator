// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bmicalculator/ResultsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'ResusableCard.dart';
import 'IconContent.dart';
import 'constants.dart';
import 'CalculateBMI.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 140;

  var maleCardColor = inactiveCardColor;
  var femaleCardColor = inactiveCardColor;

  int weight = 60;
  int age = 20;

  void update(int gender) {
    if(gender==1){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = activatedColor;
        femaleCardColor = inactiveCardColor;
      }
      else{
        maleCardColor = inactiveCardColor;
      }
    }
    if(gender==2){
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = activatedColor;
        maleCardColor = inactiveCardColor;
      }
      else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBackgroundColor,
            title: Center(
              child: Text(
                "Bmi Calculator",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child:GestureDetector(
                        onTap: (){
                         setState(() {
                           update(1);
                         });
                        },
                        child:CustomCard(
                        colour: maleCardColor,
                        cardChild: IconContent(gender: 'MALE',icon: FontAwesomeIcons.mars,),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            update(2);
                          });
                        },
                        child:CustomCard(
					            cardChild: IconContent(gender: 'FEMALE',icon: FontAwesomeIcons.venus,),
                      colour: femaleCardColor,
                    ),
                   )
                  ),
                ],
              )),
              Expanded(
                  child: CustomCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children:[
                        Text(
                          'HEIGHT',
                          textAlign: TextAlign.center,
                          style: lableTextStyles
                        ),
                        Row(                         
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              height.toString(),
                              textAlign: TextAlign.center,
                              style: KNumberStyle,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(),            
                            )
                          ],
                        ),
                        SliderTheme(data:
                          SliderTheme.of(context).copyWith(
                            trackHeight: 2,
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0XFFEB1555),
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                            overlayColor: Color(0X50EB1555)
                          )
                         , child: Slider(
                          value: height.toDouble(), 
                          onChanged: (double value){
                            setState(() {
                              height = value.round();
                            });
                          },
                          min: 120.00,
                          max: 220.00,                       
                        ))
                      ],
                    ),
                    colour: activatedColor,
                ),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: CustomCard(
                    colour: activatedColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text('Weight',
                            
                            style: TextStyle(
                              fontWeight: FontWeight.w900,  
                              fontSize: 20
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Text(weight.toString(),style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(
                                    
                                  ),
                                  primary: buttonColor, // <-- Button color
                                  onPrimary: Colors.white, // <-- Splash color
                                  padding: EdgeInsets.all(15) 
                                ),
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  
                                  FontAwesomeIcons.plus,
                                  size: 30,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(
                                    
                                  ),
                                  primary: buttonColor, // <-- Button color
                                  onPrimary: Colors.white, // <-- Splash color
                                  padding: EdgeInsets.all(15) 
                                ),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 30,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                  )),
                  Expanded(
                      child: CustomCard(
                      colour: activatedColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Age',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(
                            height: 10,
                          ),
                            Text(age.toString(),style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(
                                    
                                  ),
                                  primary: buttonColor, // <-- Button color
                                  onPrimary: Colors.white, // <-- Splash color
                                  padding: EdgeInsets.all(15) 
                                ),
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 30,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(
                                    
                                  ),
                                  primary: buttonColor, // <-- Button color
                                  onPrimary: Colors.white, // <-- Splash color
                                  padding: EdgeInsets.all(15) 
                                ),
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  
                                  FontAwesomeIcons.minus,
                                  size: 30,
                                ),
                              ),
                            
                            ],
                          )
                        ],
                      ),
                  ))
                ],
              )),
              GestureDetector(
                onTap: (){
                  bmiCalculator calc =  bmiCalculator(weight: weight, height: height);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ResultPage(
                      bmiResult:calc.calculateBmi(),
                      interpretation:calc.getInterpretation(),
                      resultText:calc.getBmi(),
                    );
                  }));
                },
                child:Container(
                  child:Center(
                    child:
                    Text("CALCULATE",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                  ),) ,),
                height: 70,
                width: double.infinity,
                color: bottombarBackgroundColor,
              ),
            ) 
            ],
          )),
    );
  }
}

