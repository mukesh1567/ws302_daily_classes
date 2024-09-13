import 'dart:io';

void main(){

  stdout.write("Enter first number: ");
  int no1= int.parse(stdin.readLineSync().toString());

  stdout.write("Enter second number: ");
  int no2= int.parse(stdin.readLineSync().toString());

  stdout.write("Enter third number: ");
  int no3= int.parse(stdin.readLineSync().toString());

  if(no1>no2 && no1>no3){
    print("Third number is greatest");
  } else if(no2>no3 && no2>no1){
    print("Second number is greatest");
  } else if(no3>no1 && no3>no2){
    print("Third number is greatest");
  }
}