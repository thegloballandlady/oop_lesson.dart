import 'dart:io';

// Define an interface
abstract class Animal {
  void barks();
}

// Implement the interface in a class
class Dog implements Animal {
  @override
  void barks() {
    print('Woof!');
  }
}

// Define a base class with an overridden method
class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

// Subclass that overrides the draw method
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

// Class with data initialization from a file
class Person {
  late String name;
  late int age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void display() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Demonstrate loop usage
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }

  // Initialize an instance of Person from a file
  var personFile = File('person.txt');
  List<String> lines = personFile.readAsLinesSync();
  var person = Person(lines[0], int.parse(lines[1]));
  person.display();

  // Create instances of Dog and Circle classes
  var dog = Dog();
  dog.barks();

  var circle = Circle();
  circle.draw();
}
