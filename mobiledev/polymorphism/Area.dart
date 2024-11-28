import 'dart:math'; 

class Shape {
  double area() {
    print("Calculating area for a generic shape...");
    return 0.0; 
  }
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  // @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  Shape shape = Circle(7); 
  print("Area of the Circle: ${shape.area()}");
}
