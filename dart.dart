

// Encapsulation provides data hiding, meaning the internal state of an object is hidden from the outside world. Access to this data is provided through public methods (getters and setters) that control how the data is accessed or modified.


// class Person {
//   // Private variable
//   String _name;

//   // Constructor
//   Person(this._name);

//   // Getter method
//   String get name => _name;

//   // Setter method
//   set name(String newName) {
//     if (newName.isNotEmpty) {
//       _name = newName;
//     } else {
//       print("Name cannot be empty");
//     }
//   }

//   // Method to display the name
//   void display() {
//     print("Hello, my name is $_name");
//   }
// }

// void main() {
//   Person p = Person("John");

//   p.display();  // Output: Hello, my name is John

//   // Accessing the private variable via getter and setter
//   print(p.name);  // Output: John
//   p.name = "Alice";  // Sets a new name
//   p.display();  // Output: Hello, my name is Alice

//   p.name = "";  // Name cannot be empty
// }


// In simpler terms, polymorphism allows objects of different classes to be treated as objects of a common super class. It enables a single method or function to operate on objects of different classes.
// // Run-time Polymorphism (Method Overriding)
// class Animal {
  
  
//   void sound() {
//     print("Animal makes a sound");
//   }
// }

// class Dog extends Animal {
  
  
//   @override
//   void sound() {
//     print("Dog barks");
//   }
  
  
// }

// class Cat extends Animal {
//   @override
//   void sound() {
//     print("Cat meows");
//   }
// }

// void main() {
//   Animal myAnimal = Dog();
//   myAnimal.sound();  // Output: Dog barks

//   myAnimal = Cat();
//   myAnimal.sound();  // Output: Cat meows
// }






// method overloading in dart 
// class Calculator {
//   // Method with optional parameter
//   int add(int a, [int b = 12]) {
//     return a + b;
//   }
// }

// void main() {
//   Calculator calc = Calculator();
//   print(calc.add(5));  // Output: 5 (with one argument)
//   print(calc.add(5, 10));  // Output: 15 (with two arguments)
// }










// method overloading
// class Calculator {
//   // Method with one parameter
//   int add(int a) {
//     return a + 10;
//   }

//   // Method with two parameters
//   int add(int a, int b) {
//     return a + b;
//   }
  
  
// }

// void main() {
//   Calculator calc = Calculator();
//   print(calc.add(5));  // Output: 15 (with one argument)
//   print(calc.add(5, 10));  // Output: 15 (with two arguments)
// }


// Polymorphism can be classified into two types:

// Compile-time polymorphism (Method Overloading)
// Run-time polymorphism (Method Overriding)


// Summary of Class Modifiers:
// abstract: Used to define classes that cannot be instantiated but provide a blueprint for other classes.
// final: Prevents subclassing. The class cannot be extended.
// const: Defines compile-time constant objects.
// extends: Used for creating subclasses that inherit behavior from a superclass.
// implements: Requires a class to implement methods defined in an interface or abstract class.
// with: Used to apply mixins to a class.
// static: Defines class-level members that are shared among all instances of the class.



// // Mixin 1
// mixin CanFly {
//   void fly() {
//     print("Flying!");
//   }
// }

// // Mixin 2
// mixin CanDrive {
//   void drive() {
//     print("Driving!");
//   }
// }

// // Base class (without any mixins)
// class Vehicle {
//   void start() {
//     print("Vehicle is starting.");
//   }
// }

// // Applying both mixins to a new class
// class FlyingCar extends Vehicle with CanFly, CanDrive {
//   // Additional behavior can be added here
// }

// void main() {
//   FlyingCar myFlyingCar = FlyingCar();
//   myFlyingCar.start();  // Output: Vehicle is starting.
//   myFlyingCar.fly();    // Output: Flying!
//   myFlyingCar.drive();  // Output: Driving!
// }

// Enum definition
// enum Days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

// void main() {
//   // Using enum values
//   var today = Days.Monday;

//   print(today);  // Output: Days.Monday
//   print(today.index);  // Output: 0 (the index of Monday in the enum)

//   // Switch-case with enum
//   switch (today) {
//     case Days.Monday:
//       print("Start of the week!");
//       break;
//     case Days.Friday:
//       print("End of the work week!");
//       break;
//     default:
//       print("Midweek!");
//   }
// }

// void main() {
//   // Map of String keys and int values
//   Map<String, int> ageMap = {'John': 25, 'Jane': 22, 'Mike': 30};
//   print(ageMap);  // Output: {John: 25, Jane: 22, Mike: 30}
  
//   // Accessing values
//   print(ageMap['John']);  // Output: 25
  
//   // Adding to Map
//   ageMap['Tom'] = 28;
//   print(ageMap);  // Output: {John: 25, Jane: 22, Mike: 30, Tom: 28}
  
//   // Removing from Map
//   ageMap.remove('Jane');
//   print(ageMap);  // Output: {John: 25, Mike: 30, Tom: 28}
  
//   // Checking if Map contains a key
//   print(ageMap.containsKey('Mike'));  // Output: true
// }

// void main() {
//   // Set of integers
//   Set<int> uniqueNumbers = {1, 2, 3, 4};
//   print(uniqueNumbers);  // Output: {1, 2, 3, 4}
  
//   // Adding to a Set
//   uniqueNumbers.add(5);
//   print(uniqueNumbers);  // Output: {1, 2, 3, 4, 5}
  
//   // Duplicate values are not added
//   uniqueNumbers.add(3);
//   print(uniqueNumbers);  // Output: {1, 2, 3, 4, 5}
  
//   // Checking if Set contains a value
//   print(uniqueNumbers.contains(3));  // Output: true
// }

// void main() {
//   // List of integers
//   List<int> numbers = [1, 2, 3, 4];
//   print(numbers);  // Output: [1, 2, 3, 4]
  
//   // Adding to a List
//   numbers.add(5);
//   print(numbers);  // Output: [1, 2, 3, 4, 5]
  
//   // Accessing elements
//   print(numbers[0]);  // Output: 1
  
//   // Removing from a List
//   numbers.remove(3);
//   print(numbers);  // Output: [1, 2, 4, 5]
// }

// // Abstract class
// abstract class Animal {
//   // Abstract method (no body)
//   void makeSound();
  

//   // Concrete method (has a body)
//   void sleep() {
//     print("This animal is sleeping.");
//   }
// }

// // Subclass (inheriting from Animal)
// class Dog extends Animal {
//   // Implementing the abstract method
//   @override
//   void makeSound() {
//     print("Woof! Woof!");
//   }
// }

// // Subclass (inheriting from Animal)
// class Cat extends Animal {
//   // Implementing the abstract method
//   @override
//   void makeSound() {
//     print("Meow! Meow!");
//   }
// }


// makeSound() is an abstract method. It does not have a body, meaning the classes that extend Animal must provide their own implementation of makeSound().
// // sleep() is a concrete method. It is already implemented and can be used by any subclass without needing to override it.
// void main() {
//   // Cannot create an instance of the abstract class
//   // var animal = Animal(); // Error: Cannot instantiate abstract class

//   // Create objects of Dog and Cat, which implement the abstract methods
//   Dog dog = Dog();
//   dog.makeSound();  // Output: Woof! Woof!
//   dog.sleep();      // Output: This animal is sleeping.

//   Cat cat = Cat();
//   cat.makeSound();  // Output: Meow! Meow!
//   cat.sleep();      // Output: This animal is sleeping.
// }







// class Person {
//   // Private variable (accessible only within the class or file)
//   String _name;

//   // Constructor
//   Person(this._name);

//   // Getter method to access private variable
//   String getName() {
//     return _name;
//   }

//   // Setter method to modify private variable
//   void setName(String name) {
//     _name = name;
//   }
// }

// void main() {
//   var person = Person('John');
  
//   // Trying to access private variable directly will cause an error
//   print(person._name);  // Error: The getter '_name' isn't defined for the class 'Person'

//   // Access private variable using getter and setter methods
//   print(person.getName());  // Output: John

//   person.setName('Mike');
//   print(person.getName());  // Output: Mike
// }

// // class Animal {
// //   void makeSound() {
// //     print("Animal makes a generic sound.");
// //   }
// // }

// // class Dog extends Animal {
// //   @override
// //   void makeSound() {
// //     super.makeSound();  // Calls the parent class's method
// //     print("Dog barks!");  // Adds custom behavior for Dog
// //   }
// // }

// // void main() {
// //   var dog = Dog();
// //   dog.makeSound();  // Output: Animal makes a generic sound.
// //                     //         Dog barks!
// // }


// // class ParentClass {
// //   //inheritance example
// //   // Properties of the parent class
// //   String name;

// //   // Constructor of the parent class
// //   ParentClass(this.name);

// //   // Method of the parent class
// //   void greet() {
// //     print("Hello from $name");
// //   }
// // }

// // class ChildClass extends ParentClass {
// //   // Constructor of the child class
// //   ChildClass(String name) : super(name);

// //   // Additional method in the child class
// //   void sayGoodbye() {
// //     print("Goodbye from $name");
// //   }
// // }



// // class Animal {
// //   // Properties (fields)
// //   String name;
// //   int age;

// //   // Constructor
// //   Animal(this.name, this.age);

// //   // Method to describe the animal
// //   void describe() {
// //     print("I am a $name and I am $age years old.");
// //   }

// //   // Method to make a sound
// //   void makeSound() {
// //     print("$name makes a sound!");
// //   }
// // }

// // void mayank(){
  
  
// // }


// // Dart is a statically-typed language.


// // int pri(int a , int b){
  
// //   return a + b;

// // }


// // (int, String) names(int a, String line){

// //   return (a+10, line+ line);
// // }



// void main() {
  
// //    var child = ChildClass("Mayank");

// //   // Accessing inherited method
// //   child.greet();  // Output: Hello from Mayank

// //   // Accessing child class method
// //   child.sayGoodbye();  // Output: Goodbye from Mayank
  
  
  
  
// //   // Creating an object of Animal class
// //   var dog = Animal('Dog', 5);

// //   // Accessing properties
// //   print(dog.name);  // Output: Dog
// //   print(dog.age);   // Output: 5

// //   // Calling methods
// //   dog.describe();  // Output: I am a Dog and I am 5 years old.
// //   dog.makeSound(); // Output: Dog makes a sound!

// //   // Creating another object of Animal class
// //   var cat = Animal('Cat', 3);
// //   cat.describe();  // Output: I am a Cat and I am 3 years old.
  
  
  
// //   int sum = pri(5,6);
// //   print(sum);
  
// //   var name = names(12,"mayank");
// //   print(name);
  
  
  
// //   var a = () =>{
    
// //     print("hello waht the fukc what the guck")
// //   };
  
  
// //   print(a);
// //   //output -- Closure: () => Set<void> from: () => collection.LinkedHashSet.from(dart_rti._Universe.eval(dart_rti._theUniverse(), "collection|LinkedHashSet<~>", true), [core.print("hello waht the fukc what the guck")])

  
// //   print(a());
  
  
// //   mayank();
  
// //   print("hello");
  
// //  // data type -- check 
  
// //   String name = "tridibesh";
// //   int age = 12;
// //   bool flag = true;
  
// //   flag = !flag;
  
  
// //   print("my name is ${name} and ${age} and ${flag}");
  
  
//   // data type - string, int , double, booleans
  
// //   dyanmic data type -- 
  
// //   dynamic variable = 10; // Initially holds an int 
// //   print(variable); // Output: 10
// //   variable = "Hello"; // Now holds a String
// //   print(variable); // Output: Hello
  
  
  
// //    DateTime now = DateTime.now();
// //   print("Current Date and Time: $now");
//   // output -- Current Date and Time: 2025-01-17 22:25:58.209
  
  
// //   DateTime specificDate = DateTime(2025, 1, 17, 22, 30); // 17th Jan 2025, 3:30 PM
// //   print("Specific Date and Time: $specificDate");
// //   //Specific Date and Time: 2025-01-17 15:30:00.000
  
  
  
  
  
// //   int age = 18; 
  
// //   if(age>18){
// //     print("he is eligible");
// //   }
// //   else if(age == 18){
// //     print("just matured");
    
// //   }
// //   else{
// //     print("under age");
// //   }
  
  
  
  
//   // switch statements
  
  
// //   int number = 2;

// //   switch (number) {
// //     case 1:
// //       print("Number is 1");
// //       break;
// //     case 2:
// //       print("Number is 2");
// //       break;
// //     default:
// //       print("Number is not 1 or 2");
// //   }
  
  
  
//   // loop 
  
// //   int i = 0;
// //   while (i < 5) {
// //     print("Iteration $i");
// //     i++;
// //   }
  
  
// //   for (int i = 0; i < 5; i++) {
// //     print("Iteration $i");
// //   }
  
  

// //   int i = 0;
// //   do {
// //     print("Iteration $i");
// //     i++;
// //   } while (i < 5);
  
  
  
  
  
  
  
  

  
 
// }


