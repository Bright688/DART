// importing dart:io file
import 'dart:io';
//function userfunc return user input and parse user input to int
int userfunc(){
  print("Enter number");
  var 
user_input=int.parse(stdin.readLineSync()!);
  return user_input;
}

void main(){
  //invoke function userfunc to get the number enter by the user
  int number=userfunc();

  //if number is greater than 10 print statement
  if (number>10){
    print("your number is greater than 10");
  }

  //if number is equals to 10 print statement
  else if(number==10){
    print("your number is equal to 10");
  }

  //if number is less than 10 print statement
  else {
    print("your number is less than 10");
  }
}

