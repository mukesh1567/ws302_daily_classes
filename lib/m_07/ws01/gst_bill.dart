import 'dart:io';

void main(){

  stdout.write("Enter the quantity in kg: ");
  String value=stdin.readLineSync().toString();
  double quantity = double.parse(value);

  stdout.write("Enter the price perkg: ");
  double price = double.parse(stdin.readLineSync().toString());

  double totalprice= quantity*price;
  print("SubTotal = $totalprice");

  double sgst = totalprice * .19;
  print("SGST(19%) = $sgst");

  double cgst = totalprice* .15;
  print("CGST(15%) = $cgst");

  double total = totalprice+sgst+cgst;
  print("Total Amount = $total");

  stdout.write("THANK YOU");
}