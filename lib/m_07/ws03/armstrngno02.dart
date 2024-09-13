import 'dart:io';
import 'dart:math';

void main(){

  print("Enter number to check armstrong: ");
  int numb = int.parse(stdin.readLineSync().toString());

  int length = 0;
  int temp = numb;

  while (temp>0){
    temp= temp~/10;
    length++;
  }
  temp = numb;
  double sum = 0;
  //int sum-- a value of type num can't be assigned to a variable of type 'int'

  while(temp>0){
    int rem = temp%10;
    //print("Remainder = $rem");
    sum = sum + pow(rem, length);
    //print("Sum = $sum");
    temp = temp~/10;
    //print("Quotient = $temp");
  }
  if( numb == sum){
    print("Yes $numb is an Armstrong number");
  } else {
    print("No $numb is not an Armstrong number");
  }
}