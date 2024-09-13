import 'dart:io';

void main(){
  print("Enter no1: ");
  String value = getvalue();
  int no1 = int.parse(value);

  print("Enter no2");
  int no2 = int.parse(getvalue());

  print(no1+no2);

}

/*String getvalue(){
  return stdin.readLineSync().toString();
}*/

String getvalue() => stdin.readLineSync().toString();