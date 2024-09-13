void main(){
  Shape circle = Circle();
  Shape rectangle = Rectangle();

  circle.draw();
  rectangle.draw();
}

abstract class Shape{
  void draw();
}

class Circle extends Shape{
  @override
  void draw(){
    print("Drawing a Circle");
  }
}

class Rectangle extends Shape{
  @override
  void draw(){
    print("Drawing a Rectangle");
  }
}