///Encapsulation
class Person{
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo(){
    print("Name : $name, Age : $age");
  }
}

void main(){
  var person = Person("alex", 33);
  person.displayInfo();
}