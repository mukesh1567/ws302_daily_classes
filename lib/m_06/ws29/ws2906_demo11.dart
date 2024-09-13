import 'dart:io';
void main(){

  /* print("Enter no1: ");
  ///input


  String? name = stdin.readLineSync();

  if(name!=null){
    //do your task
  } else {
    //what you want to do when value is null
  }*//*

  String value = stdin.readLineSync().toString();
  double no = double.parse(value);
  double sqr = no*no;
  print("The square of ${no.toInt()} is ${sqr.toInt()}");

*/
  /*bool check;
  if(value=="Y"){
    check = true;
  } else {
    check = false;
  }

  print("Your answer: $check");*/

  //"77"
  //77.0

  /*int no = int.parse(value);

  int sqr = no*no;

  print("The square of $no is $sqr");*/


  //input
  print("Enter no1: ");
  int no1 = int.parse(stdin.readLineSync().toString());

  print("Enter no2: ");
  int no2 = int.parse(stdin.readLineSync().toString());

  int sum = no1 + no2;

  //output
  stdout.write("The sum of $no1 and $no2 is $sum");

// addition
// subtraction
// multiplication
// division

}