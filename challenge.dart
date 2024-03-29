import 'dart:io';
//create unction that takes two numbers as input.and returns the sum
int sumofnumbers(int n1, int n2){
  //sum the two numbers
  int result = n1+n2;
  return result;
}

//create a program that takes a list of numbers as input and outputs the largest number in the list
void maxnumber(List<int> numbers){
  int max=0;
  for(int n=0; n<numbers.length; n++){
    //iterate through the list and get the maximum number
     if(numbers[n]>max){
       //change max to the maximum number
       max=numbers[n];
     }
  }
  print('The maximum number is: ${max}');
}
  

void main(){
  //call the fumction sumofnumbers
  int result=sumofnumbers(5, 7);
  print('the sum of the two numbers is: ${result}');

  //write a program that uses a for loop to print out the number from 1 to 10

  for(int i=1; i<=10; i++){
    print(i);
  }

  //create a program that uses the switch statement to check for different string values and outpyr a response based on the value
  print("Enter string value between week1 to week5");
  var value=stdin.readLineSync();
  switch(value){
    case "week1":{
      print("Week 1 lecture is on Entepreneurship");
    }
    case "week2":{
      print("week 2 lecture is on Dart programming");
    }
    case "week3":{
      print("week 3 lecture is on python programming");
    }
    case "week4":{
      print("Week 4 lecture is on Database design");
    }
    case "week5":{
      print("Week 5 lecture is on web development");
    }
    default:{
      print("Invalid choice");
    }
  }

  //create a program that uses while loop to print out the numbers from 20 to 10
  int i=10;
  while(i<=20){
    print(i);
    i +=1;
  }

  //create a program that uses an if-else statement to check if a number is even or odd and output the result
  print("Enter number to check if it is even or odd");
  var number=int.parse(stdin.readLineSync()!);
    if(number%2==0){
      print('the number ${number} is an even number');
    }
    else{
      print('the number ${number} is an odd number');
    }

  //call function maxnumber
  maxnumber([2, 5, 3, 9, 12, 11, 26, 6, 4]);

  //write a program that uses a try-catch block to catch an exception and output an error message
  try {
    // Attempt to perform a potentially error-prone operation
    int result = 10 ~/ 0; // Division by zero, which will throw an exception
    print('Result: $result'); // This line will not be reached
  }
  catch (e){
    // Catch any exception and handle it
    print('An error occurred: $e'); // Output an error message
  }
}