
import 'dart:io';

void main(){
  print('Enter any no to check if it is a Prime no: ');
  int no = int.parse(stdin.readLineSync().toString());

  if(checkIfPrime(no)){
    print("The $no is a Prime no.");
  } else {
    print("The $no is not a Prime no.");
  }
}

bool checkIfPrime(int no){
  for(int i = 2; i<= no~/2; i++){
    if(no%i==0){
      return false;
    }
  }
  return true;
}
