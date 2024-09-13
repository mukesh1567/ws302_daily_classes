/*
4. find the first n "even" numbers*/
import 'dart:io';

void main(){
  print('Enter no of even number: ');
  int no1 = int.parse(stdin.readLineSync().toString());
  int no2 =2*no1;

  List<int> firstEven = [];

  for(int i=1; i<=no2; i++){
    if(i%2==0){
      firstEven.add(i);
      //print('even number $i');
    }
  }
  print('first $no1 even number: $firstEven');
}