import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int _counter = 0;

  ///event
  void incrementCount(){

    _counter++;
    notifyListeners();
  }

  int getCounterValue(){
    return _counter;
  }

  void decrementCount(){
    if(_counter>0){
      _counter--;
      notifyListeners();
    }
  }
}