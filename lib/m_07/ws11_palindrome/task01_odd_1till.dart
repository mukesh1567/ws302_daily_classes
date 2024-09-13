/*
1. find all "odd" number till N number.
2. find all "odd" number before N number.
3. find all "odd" number between N1 and N2
4. find the first n "odd" numbers*/
import 'dart:io';

void main() {
  print("Enter Num to find odd no till Num: ");
  int no = int.parse(stdin.readLineSync().toString());

  for( int i =1; i<=no; i++){
    if (i%2==1){
      print('$i odd number');
    }
  }
}