import 'dart:io';
import 'dart:math';
//create a simple calculator that receives user input for the two digits and operand
void main(){
   double answer=0.0;
   double first_digit=userInput();
   double second_digit=userInput();
   String operand=operandChoice();
  
   if(operand=='+'){
     answer=first_digit+second_digit;
   }
  else if(operand=='-'){
    answer=first_digit-second_digit;
  }
  else if(operand=='*'){
    answer=first_digit*second_digit;
  }
  print('answer: ${answer}');
}
//create a function userInput that returns the user input for the digits for operation
double userInput(){
    print("Enter a digit");
    double digit=double.parse(stdin.readLineSync()!);
    return digit;
}

//create a function operandChoice that returns operand.
String operandChoice(){
    print("Enter an operand e.g +, -, *");
    String operand=stdin.readLineSync()!;
    return operand;
  
}