double calculateArea(double height, double base) {
  double area = 0.5 * base * height;
  double rounded = double.parse(area.toStringAsFixed(2));
  return rounded;
}
