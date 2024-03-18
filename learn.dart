import 'dart:ffi';
import 'dart:io';

void main() {
  //create instance of the objects
  Person person = Person('john', '1990 - 01 - 20', 'male');
  person.introduce();

  Cat cat = Cat(4, 'black');
  cat.makeSound();

  Student student =Student("john", "10023401");
  student.studentPerformance(60);
}

//create class
class Person {
  //properties
  String name;
  String dob;
  String gender;
  //constructor
  Person(this.name, this.dob, this.gender);

  void introduce() {
    print(
        "my name is ${name}. My date of birth is ${dob}, and I am a ${gender}");
  }
}
//create abstract class
abstract class Animal {
  int legs = 0;
  void makeSound();
}

//create class named Cat and that inherits animal properties
class Cat extends Animal {
  @override
  int legs;
  String color;

  //constructor
  Cat(this.legs, this.color);
  
  @override  //override the makeSound method
  void makeSound() {
    print("The ${color} cat with ${legs} legs made a Meow sound");
  }
}

//create SubjectMathematics abstract class
abstract class SubjectMathematics{
  void studentPerformance(int grade){}
  void studentConduct(String message){}
  
}

class Student extends SubjectMathematics{
  Student(String? name, String? enrollmentNumber);
  
  @override
  void studentPerformance(int grade){
    if(grade>50){
      print("pass");
    }
    else{
      print("fail");
    }
  }
  
}

