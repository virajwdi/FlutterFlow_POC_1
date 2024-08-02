import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _Maggie = 25;
  int get Maggie => _Maggie;
  set Maggie(int value) {
    _Maggie = value;
  }

  int _Milk = 30;
  int get Milk => _Milk;
  set Milk(int value) {
    _Milk = value;
  }

  int _cake = 25;
  int get cake => _cake;
  set cake(int value) {
    _cake = value;
  }

  int _Biscuit = 20;
  int get Biscuit => _Biscuit;
  set Biscuit(int value) {
    _Biscuit = value;
  }
}
