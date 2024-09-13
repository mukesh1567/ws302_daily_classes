import 'dart:io';

void main(){
  print("Enter the no1: ");
  String value1= stdin.readLineSync().toString();
  int no1 = int.parse(value1);

  print("Enter the no2: ");
  String value2 = stdin.readLineSync().toString();
  int no2 = int.parse(value2);

  if (no2==0){
    stdout.write("A no can't be divided by zero becoz it give infinte soln");
  } else {
    double result = no1/no2;
    print("The division of $no1 and $no2 is $result");
  }
/*
  int diff;
  if(no1>no2){
    diff= no1-no2;
  } else {
    diff = no2-no1;
  }
  print("The difference of $no1 and $no2 is $diff");
*/

}