import 'package:counter_app/counter_model.dart';
import 'package:flutter/material.dart';

class CountController extends ChangeNotifier {
  CountModel _count = CountModel(0);
  CountModel get count => _count;

  void increment() {
    _count.count++;
    notifyListeners();
  }

  void decrement() {
    if(_count.count >0){
    _count.count--;
    notifyListeners();
  }
  }
  void reset() {
    _count.count=0;
    notifyListeners();
  }
}
