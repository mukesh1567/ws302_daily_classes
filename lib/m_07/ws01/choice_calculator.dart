import 'dart:io';

void main(){

  stdout.write("\t\t**CALCULATOR**\n1 for additon\n2 for subtraction\n3 for multiplication\n4 for division\nEnter the choice: ");
  int choice = int.parse(stdin.readLineSync().toString());

  if (choice>0 && choice <=4){
    print("Enter no1");
    int no1 = int.parse(stdin.readLineSync().toString());

    print("Enter no 2");
    int no2 = int.parse(stdin.readLineSync().toString());

    if (choice == 1){
      int add= no1+no2;
      print("The additon of $no1 and $no2 is $add");
    } else if( choice == 2){
      if (no2>no1){
        int diff= no2-no1;
        print("The difference of $no1 and $no2 is $diff");
      }else{
        int diff= no1-no2;
        print("The difference of $no1 and $no2 is $diff");
      }
    } else if(choice == 3){
      int multi = no1*no2;
      print("The multiplication of $no1 and $no2 is $multi");
    } else if( choice == 4){
      if (no2 == 0){
        print("unable to operate becoz infinite solutions");
      } else {
        double divide = no1/no2;
        print("The division of $no1 and $no2 is $divide");
      }
    }
  } else{
    print("invalid number");
  }

}