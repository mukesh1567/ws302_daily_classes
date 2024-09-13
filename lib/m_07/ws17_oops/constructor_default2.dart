class Student {
  String? name;
  int? age;
  String? schoolname;
  String? grade;

  // Default Constructor
  Student() {
    print("Constructor called"); // this is for checking the constructor is called or not.
    schoolname = "ABC School";
  }
}

void main() {
  // Here stud is object of class Student.
  Student stud = Student();
  stud.name = "John";
  stud.age = 10;
  stud.grade = "A";
  print("Name: ${stud.name}");
  print("Age: ${stud.age}");
  print("School Name: ${stud.schoolname}");
  print("Grade: ${stud.grade}");
}