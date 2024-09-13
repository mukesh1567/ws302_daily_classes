///single inheritance
class Car {
  // Properties
  String? name;
  double? price;
}

class Tesla extends Car {
  // Method to display the values of the properties
  void display() {
    print("Name: ${name}");
    print("Price: ${price}");
  }
}

void main() {
  // Create an object of Tesla class
  Tesla te = new Tesla();
  // setting values to the object
  te.name = "Tesla Model 3";
  te.price = 50000.00;
  // Display the values of the object
  te.display();
}