import 'dart:io';

void main(){
  print("Enter number to find prime no: ");
  int num =int.parse(stdin.readLineSync().toString());

  bool isPrime= true;

  for(int i=2; i <= num; i++){
    if(num%i == 0){
      isPrime = false;
    }
  }
// program below is only for checking which number are used for division
  for(int i=2; i<= num~/2; i++){
    print(i);
    if(num%2 == 0){
      isPrime=false;
    }
  }

  if(isPrime){
    print("The $num is prime number");
  } else {
    print("The $num is not prime number");
  }

}

//second method

/*
import 'dart:io';

void main() {
  print('Enter a number: ');
  int num = int.parse(stdin.readLineSync()!);

  if (isPrime(num)) {
    print('$num is a prime number.');
  } else {
    print('$num is not a prime number.');
  }
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}*/

//third method

/*
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
}*/
