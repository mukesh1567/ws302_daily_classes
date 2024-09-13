/*
1. find all "odd" number till N number.
2. find all "odd" number before N number.
3. find all "odd" number between N1 and N2
4. find the first n "odd" numbers*/

import 'dart:io';

void main(){

  print("Enter no1: ");
  int no1 = int.parse(stdin.readLineSync().toString());

  print("Enter no2: ");
  int no2 = int.parse(stdin.readLineSync().toString());

  for (int i=no1; i<=no2; i++){
    if(i%2==1){
      print("$i odd number");
    }
  }
}