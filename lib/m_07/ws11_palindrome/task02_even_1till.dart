/*
Odd, even, prime, armstrong, palindrome

1. find all "even" number till N number.
2. find all "even" number before N number.
3. find all "even" number between N1 and N2
4. find the first n "even" numbers*/
import 'dart:io';

void main(){
  print('Enter number till find even number: ');
  int no1 = int.parse(stdin.readLineSync().toString());

  List<int> eventill = [];

  for( int i = 1; i<=no1; i++){
    if(i % 2==0){
      eventill.add(i);
      //print('even num $i');
    }
  }
  print('even number till $no1 : $eventill');
}