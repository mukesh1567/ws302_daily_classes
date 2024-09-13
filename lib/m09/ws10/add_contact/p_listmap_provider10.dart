import 'package:flutter/cupertino.dart';

class ListMapProvider extends ChangeNotifier{

  List<Map<String, dynamic>> _mData = [];

  ///events konse honge, data add here
  void addMap(Map<String, dynamic> newData){
    _mData.add(newData);
    notifyListeners();
  }

  ///data get here
  List<Map<String,dynamic>> getListData() => _mData;

  ///update
  void updateMap(Map<String,dynamic>updatedData, int index){
    _mData[index] = updatedData;
    notifyListeners();
  }

  void deleteMap(int index){
    _mData.removeAt(index);
    notifyListeners();
  }

}