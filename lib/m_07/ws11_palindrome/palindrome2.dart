import 'dart:io';

void main(){

  print("Enter the name to check palindrome: ");
  String name = stdin.readLineSync().toString();

  // print(name.split("").reversed);
  // print(name.split("").reversed.toList());
  // print(name.split("").reversed.toList().join(""));

  String reversedName = name.split("").reversed.toList().join("");

  //print(reversedName);
  if (name == reversedName){
    print("$name is palindrome");
  } else {
    print("$name is not palindrome");
  }
}