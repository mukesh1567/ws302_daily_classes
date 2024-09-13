/*
1. find all "odd" number till N number.
2. find all "odd" number before N number.
3. find all "odd" number between N1 and N2
4. find the first n "odd" numbers*/
import 'dart:io';

void main(){

  print('Enter no of odd number required: ');
  int no = int.parse(stdin.readLineSync().toString());

  List<int> oddNum = [];

  int no1 = 2* no;

  for (int i=1; i<=no1; i++){
    if(i%2==1){
      oddNum.add(i);
      //print("$i odd number");
    }
  }

  print("first $no odd numbers are $oddNum");
}