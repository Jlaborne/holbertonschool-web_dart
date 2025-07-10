int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  var summ = add(a, b);
  var subs = sub(a, b);
  return 'Add $a + $b = $summ\nSub $a - $b = $subs';
}
