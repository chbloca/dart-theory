import 'dart:math';

void main() {
  final square = Square(side: 10.0);
  final circle = Circle(radius: 5.0);
  
  printArea(square);
  printArea(circle);
}

void printArea(Shape shape){
  print(shape.area);
}

abstract class Shape{ // these cannot be instantiated, useful to define interfaces, not implementations
  double get area; // converted the method into a computed property
}

class Square implements Shape{ // this is for abstract classes
  Square({this.side});
  final double side;
  double get area => side * side;
}

class Circle implements Shape{
  Circle({this.radius});
  final double radius;
  double get area => radius * radius * pi;
}
/*
import 'dart:math';

void main() {
  final square = Square(side: 10.0);
  final circle = Circle(radius: 5.0);
  
  printArea(square);
  printArea(circle);
}

void printArea(Shape shape){
  print(shape.area());
}

abstract class Shape{ // these cannot be instantiated, useful to define interfaces, not implementations
  double area(); // I am not providing a method a body for the methd
}

class Square implements Shape{ // this is for abstract classes
  Square({this.side});
  final double side;
  double area() => side * side;
}

class Circle implements Shape{
  Circle({this.radius});
  final double radius;
  double area() => radius * radius * pi;
}
*/
/*

import 'dart:math';

void main() {
  final square = Square(side: 10.0);
  final circle = Circle(radius: 5.0);
  
  print(square.area());
  print(circle.area());
}

abstract class Shape{ // these cannot be instantiated, useful to define interfaces
  double area(); // I am not providing a method a body for the methd
}

class Square implements Shape{ // this is for abstract classes
  Square({this.side});
  final double side;
  double area() => side * side;
}

class Circle implements Shape{
  Circle({this.radius});
  final double radius;
  double area() => radius * radius * pi;
}

*/