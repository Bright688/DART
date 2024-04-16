
import 'dart:io';
import 'dart:math';
//create calculator that receives user input including the first digit as the first input, the operands such as +, -, * and others as the second input, and the third digit as the final input
void main(){
 var mycalculator=Calculator();
  mycalculator.calculate();
}

class Calculator{
  //store current answer  of the calculated digits
  num ans = 0;
  var operand2;

  void calculate(){
    
    //use fo-while loop to prompt users for operand and correct digits that is a number such as int and double
    do {
      //use try and catch to handle exception and print out invalid digits and continuously receive user input if the input entered is not a number.
      try {
        //get user input for the digits
        print("Enter digit");
        var first_digit = num.parse(stdin.readLineSync()!);
        //to calculate more digits. calculate the previous answers to the additional digits entered
        //to get 	addition of the class
        if(operand2 == '+'){
          ans=first_digit+ans;
        }
        //to get subtraction of the
        else if(operand2=='-'){
          ans=ans-first_digit;
        }
        //to get multiplication of the digit
        else if(operand2=='*'){
          ans=ans*first_digit;
        }
        //to get division of the digits
        else if(operand2=='/'){
          ans=ans/first_digit;
        }
        //to get power of the digit
        else if(operand2=='^'){
          ans=pow(ans, first_digit);
        }
        //get the operands =, +, -, and others
        print("Enter operand equal to or operand");
        var operand = stdin.readLineSync();
        //Use while loop to continuously get user input for the operand if the operand enetered is not correct
        while(!(operand =='+'||operand=='-'||operand =='='||operand=='/'||operand=='*'||operand=='^')){
          //print invalid operand if the input entered is not an operand
          print('Invalid operand. Enter a valid operand +, -, =');
          //continously get operand until the correct operand is entered
          operand = stdin.readLineSync();
          //if the operand entered is correct break the statement
          if(operand=='+'||operand=='-'||operand=='='||operand=='/'||operand=='*'||operand=='^')
            break;
        }
       //calculate the digits entered
        if(operand =='+'||operand=='-'||operand =='='||operand=='/'||operand=='*'||operand=='^'){
          //if operand is + add the digits
            if (operand == '+'){
              ans = first_digit+ans;
            } 
          //if the operand is - subtract the digits
          else if (operand == '-') {
              ans = first_digit-ans;
              
            } 
          //get the division of the digits
          else if (operand == '/'){
            ans=first_digit;
          }
          //get the multiplication of the digits
          else if (operand=='*'){
            ans = first_digit;
          }
          //get the raise power of the digits
          else if(operand=='^'){
            ans=first_digit;
          }
          
          
          //if the operand is =, print the answer
          else if(operand=='='){
              print(ans);
              break;
            }
        }

       //get user input for the next digits
        print("Enter digit");
        var third_digit = num.parse(stdin.readLineSync()!);

        //get the addition of the digits
        if (operand == '+'){
          ans = ans + third_digit;
        } 
        //get the subtraction of the digits
        else if (operand == '-') {

          ans = ans-third_digit;
        }
        //if the operand is / divide the first digit and next digit
        else if (operand == '/'){
          ans=ans/third_digit;
        }
        //get the multiplication of the digit
        else if (operand=='*'){
          ans = ans * third_digit;
        }
        //get the power of the digit
        else if (operand=='^'){
          ans=pow(ans, third_digit);
        }
        //get user input for the next operand 
        print("Enter equals to or operand");
        operand2 = stdin.readLineSync();

        //if operand is = print the total answer or else continue the calculation with other digits
        if(operand2=='='){
          print(ans);
          break;
        }

      } catch (e) {
        print("Invalid input. Please enter a valid digit.");
        continue;
      }


    } while (true);

  }
}