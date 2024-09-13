import 'dart:io';

void main(){
  print("Enter the number: ");

  String value = stdin.readLineSync().toString();
  int number = int.parse(value);

  if(number%2 == 0){
    print("The number is even");
  } else {
    print("The number is odd");
  }
}
