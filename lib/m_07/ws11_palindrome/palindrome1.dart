import 'dart:io';

void main(){

  print("Enter the word to check palindrome: ");
  String name = stdin.readLineSync().toString();

  String reversedName = "";
  for(int i = name.length-1; i>=0; i--){
    //print(i);
    //print(name[i]);
    reversedName = reversedName + name[i];
    //print(reversedName);
  }

    if(name == reversedName){
  //if (name.toLowerCase() == reversedName.toLowerCase()){
  //if (name.toUpperCase() == reversedName.toUpperCase()){
    print('$name is a palindrome');
  } else {
    print('$name is not a palindrome');
  }
}