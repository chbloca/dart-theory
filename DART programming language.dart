void main(){
  // variable types are known at compile time --> statically typed language
  
  //var name = 'Andrea';
  //var age = 34; // it's like an auto
  //var height = 1.84; // it's like a const
  
  // final height = 1.84; // it's like a const
  // dynamic height = 1.84; // you can change the type of variable with this. Only when we do not know the initial type
  //height = "Andrea";
  
  //describe(name, age, height); for void
  //describe("Matt", 27, 1.76);
  
  //final person1 = describe(name, age, height);
  //final person1 = describe(name: name, age: age, height: height);
  
  //final person1 = describe(name, age); // with optional parameter
  //final person2 = describe("Matt", 27, 1.76);
  
  //final person = Person(name: "Andrea", age: 34, height: 1.84);
  //person.name = "Bob";
  //print(person.name);
  //print(person.describe());
  //final employee = Employee(taxCode: "AB12", salary: 50000);
  final employee = Employee(name: "Andrea", age: 34, height: 1.84, taxCode: "AB12", salary: 50000);
  employee.sayName();
  print(employee); // this is equivalent to print(employee.toString());
}

/*
void describe(String name, int age, double height){
  print("Hello, I'm $name");
  print("My name has ${name.length} letters");
  print("I'm $age years old");
  print("I'm $height meters tall"); // it's like a cout but the python equivalent
}
*/

/*
String describe(String name, int age, double height){
  return "Hello, I'm $name. I'm $age years old, I'm $height tall"; // string interpolation
}
*/

class Person{
  Person({this.name, this.age, this.height}); // constructor: initialize member variables when starting an instance
  String name; // as we do not initialize, the compiler does not know the type, so var does not work. If we define it as final, it is a const
  int age;
  double height;
  
  @override // we put this above the method we are overriding
  String toString() => "name: $name, age: $age, height: $height"; // if we do not define it here, it will show Instance of 'Employee'. Person.toString() overrides Object.toString()
  String describe() => // when a function is defined inside a class, it is called method and does not require arguments declared within the class
  "Hello, I'm $name. I'm $age years old, I'm $height tall";

  void sayName() => print("Hello I'm $name");
}

/*
// With optional parameter
String describe({String name, int age, double height = 0.0}){ // name parameters: curly braces as alternative to positional arguments
//String describe(String name, int age, [double height = 0.0]){
  return "Hello, I'm $name. I'm $age years old, I'm $height tall"; // string interpolation
}

String describe2({String name, int age, double height = 0.0}) => // arroy operator
  "Hello, I'm $name. I'm $age years old, I'm $height tall";

void sayName(String name) => print("Hello I'm $name");
*/

class Employee extends Person { // inherited classes
  Employee({String name, int age, double height, this.taxCode, this.salary})
    : super(name: name, age: age, height: height); // we add superconstructor and the 3 first params so that employee.sayName() output is not null
  final String taxCode;
  final int salary;
  @override
  String toString() => "${super.toString()}, taxCode: $taxCode, salary: $salary";
}