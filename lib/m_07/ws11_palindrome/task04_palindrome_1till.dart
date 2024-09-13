/*
Odd, even, prime, armstrong, palindrome

1. find all "odd" number till N number.
2. find all "odd" number before N number.
3. find all "odd" number between N1 and N2
4. find the first n "odd" numbers*/
import 'dart:io';

void main(){
  print("Enter number to check palindrome: ");
  String value = stdin.readLineSync().toString();
  int num = int.parse(value);

  int reversedNo = 0;
  int temp = num;

  while ( temp>0 ){
    int rem = temp%10;
    //print("remainder = $rem");
    reversedNo = reversedNo*10 + rem;
    //print("reversed = $reversedNo");
    temp = temp~/10;
    //print("temp = $temp");
  }

  if ( num == reversedNo){
    print("$num is palindrome");
  } else {
    print("$num is not palindrome");
  }
}