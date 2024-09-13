import 'dart:io';

void main() {
  stdout.write("Enter the Number to check armstrong number: ");
  int num = int.parse(stdin.readLineSync().toString());
  // esko solve krne k liye 1st length nikalni pdegi fer
  // jo number h uske power

  int length = 0;
  int temp = num;
  //num ko temporary name de dia becoz ye zero ho ja rha h, run krne pr

  while (num>0){
    num = num~/10;
    //print(num);
    //print num ka use num ki length nikalne k liye
    length++;
    //length= length+1; aise b likh skte hai
  }

  print(num);
  //user se jo num ki value lia h
  print("Length = $length");

}