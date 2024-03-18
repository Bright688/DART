import 'dart:io';
//1.  A class that implements an interface

//define an interface
abstract class Animal{
  String makeSound();
}
//define a class that implements the animal interface
class Dog implements Animal{
  @override
  makeSound(){
    return 'woof';
  }
}

//2.  A class that overrides an inherited method
class Vehicle{
  String brand;
  int year;
  //Constructor
  Vehicle(this.brand, this.year);

  void display(){
    print('Brand: $brand, Year: $year');
  }
  
  buy(){
    
  }
  void available(){
    
  }
}

//create a subclass of Vehicle and inherit from it.
//A class that overrides an inherited method
class Car extends Vehicle{
  int numofDoors;

  //constructor
  Car(String brand, int year, this.numofDoors): super(brand, year);

  //display function
  @override
  display(){
    super.display();
    print('Number of doors: $numofDoors');
  }
}

//create another subclass of vehicle and inherit from Vehicle.
//A class that overrides an inherited method
class Motorcycle extends Vehicle{
  String type;

  //constructor
  Motorcycle(String brand, int year, this.type): super(brand, year);

  //display function
  @override
  display(){
    super.display();
    print('type: $type');
  }
}


// Method that demonstrates the use of a loop
void printMultipleTimes(String text, int times) {
  for (var i = 0; i < times; i++) {
    print(text);
  }
}

void main(){
  //create an instance of the objects
  //An instance of a class that is initialized with data.
  Animal animal = Dog();
  print(animal.makeSound());

  Car car = Car('Toyota Camry', 2022, 4);
  car.display();
   Motorcycle motorcycle = Motorcycle('Honda', 2019, 'rollercoaster');
  motorcycle.display();

// Demonstrating a method that uses a loop
print('\nPrinting "Hello, world!" 3 times:');
printMultipleTimes("Hello, world!", 3);
}

