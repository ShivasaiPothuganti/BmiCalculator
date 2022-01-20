import 'dart:math';

class bmiCalculator{

  final int height;
  late double _bmi;
  final int weight;

  bmiCalculator({required this.height,required this.weight});

  String calculateBmi(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(2);
  }

  String getBmi(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }
    else if(_bmi>18.5){
      return 'NORMAL';
    }
    else if(_bmi<18.5) {
      return 'UNDERWEIGHT';
    }
    else{
      return "wait";
    }
  }

  String getInterpretation(){
       if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise More';
    }
    else if(_bmi>18.5){
      return 'You have a Normal body weight';
    }
    else if(_bmi<18.5) {
      return 'You have lower body weight. Try to eat more';
    }
    else{
      return "wait";
    }
  }

}