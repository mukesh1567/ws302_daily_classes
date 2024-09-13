class A {
  void add(int x, int y) {
    print(x + y);
  }
}

class B extends A {
  void sub(int x, int y) {
    print(x - y);
  }
}

void main() {
  var b = new B();
  b.add(5, 2);
  b.sub(5, 2);
}