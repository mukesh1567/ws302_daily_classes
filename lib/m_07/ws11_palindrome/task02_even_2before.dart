/*
2. find all "even" number before N number.*/
import 'dart:io';

void main(){
  print('Enter number find even number before: ');
  int no1 = int.parse(stdin.readLineSync().toString());

  List<int> evenBefore = [];

  for(int i = 1; i< no1; i++){
    if(i%2 == 0){
      evenBefore.add(i);
      //print('even number : $i');
    }
  }
  print('Even number before $no1: $evenBefore');
}