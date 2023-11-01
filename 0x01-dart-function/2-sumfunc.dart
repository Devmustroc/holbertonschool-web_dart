int add(int a, int b){
  return a + b;
}
int sub(int a, int b) {
  return a - b;
}
String showFunc(int a, int b) {
  int c = add(a, b);
  int d = sub(a, b);
  return "Add $a + $b = $c\nSub $a - $b = $d";
}
