/*

3. find all "even" number between N1 and N2.*/
import 'dart:io';

void main(){
  print('Enter first number: ');
  int no1 = int.parse(stdin.readLineSync().toString());
  print("Enter second number: ");
  int no2 = int.parse(stdin.readLineSync().toString());

  List<int> evenBetw = [];

  for(int i = no1; i<=no2; i++){
    if(i%2 == 0){
      evenBetw.add(i);
      //print('even nos $i');
    }
  }
  print('Even number between $no1 and $no2 : $evenBetw');
}