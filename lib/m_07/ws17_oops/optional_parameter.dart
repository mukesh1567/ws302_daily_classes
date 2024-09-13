void main(){

  print(add(2, 4, c: 34,e: 23));

  print(mult(2, 3, 4, 1, 5 ))  ;

}
///named parameter {}
int add(int a, int b, { int c = 0, int d = 0, int e = 0}){
  return a+b+c+d+e;
}
///positional parameter []
int mult(int a, int b, int c,[int d = 1, int e = 1]){
  return a*b*c*d*e;
}
