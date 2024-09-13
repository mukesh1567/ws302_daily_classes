/*
Odd, even, prime, armstrong, palindrome

1. find all "armstrong" number till N number.
2. find all "armstrong" number before N number.
3. find all "armstrong" number between N1 and N2
4. find the first n "armstrong" numbers*/
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