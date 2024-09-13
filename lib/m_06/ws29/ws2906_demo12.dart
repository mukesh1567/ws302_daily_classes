import 'dart:io';
void main(){

  String value = stdin.readLineSync().toString();
  int no = int.parse(value);
  int sqr = no*no;
  print("The square of $sqr");


  // String value = stdin.readLineSync().toString();
  // int no = int.parse(value);
  // int sqr = no*no;
  // print("The square of ${no.toInt()} is ${sqr.toInt()}");

}


/*
import 'dart:io';

void main(){
  print("Enter the name; ");
  String name = stdin.readLineSync().toString();
  print("Welcome $name");
}*/



/*

import 'dart:io';

void main(){
  print("Enter the number: ");

  String value = stdin.readLineSync().toString();
  int no=int.parse(value);
  int sqr = no*no;
  print("The square of $no is $sqr");
}
*/



/*

import 'dart:io';

void main(){

  print("Do you want to continue(Y/N): ");

  String value = stdin.readLineSync().toString();
  bool check;
  if(value=="Y"){
    check = true;
  } else{
    check = false;
  }
  print("Your answer $check");
}
*/
