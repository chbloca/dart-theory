// why mixins? extract and reuse functionality in multiple classes

void main() {
  final person = Person(name: "Andrea", age: 34, height: 1.84, weight: 70);
  print(person.bmi);
}

class Person with BMI{ //with mixin
  Person({this.name, this.age, this.height, this.weight});
  final String name;
  final int age;
  final double height;
  final double weight;
  
  double get bmi => calculateBMI(weight, height);
}

mixin BMI{
  double calculateBMI(double weight, double height){
    return weight / (height * height);
  }
}