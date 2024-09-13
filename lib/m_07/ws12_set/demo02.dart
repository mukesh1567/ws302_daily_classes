import 'dart:io';

void main(){
  print('Enter no1: ');
  int no1 = getintvalue();

  print('Enter no2: ');
  int no2 = getintvalue();

  print(no1+no2);
}

String getvalue() {
  return stdin.readLineSync().toString();
}

int getintvalue(){
  return int.parse(getvalue());
}

//int getintvalue => int.parse(stdin.readLineSync().toString());

//String getvalue => stdin.readLineSync().toString();

//int getintvalue => int.parse(getvalue());