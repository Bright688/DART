void main(){
  //call the functions
  num sum=addTwo(5, 6);
  print(sum);

  num difference=subtractTwo(5, 7);
  print(difference);

  num product=multiplyTwo(5, 2);
  print(product);

  num quotient=divideTwo(10, 2);
  print(quotient);

  int string_length=stringLength('john');
  print(string_length);

  String name=getFirstElement(["bright", "john"]);
  print(name);
}

//create a function addtwo that take two parameters and return sum of two numbers
num addTwo(num first_digit, num second_digit){
  num total_num=first_digit+second_digit;
  return total_num;
}

//create a function subtractTwo that take two parameters and return difference of two numbers
num subtractTwo(num first_digit, num second_digit){
  num total_num=first_digit-second_digit;
  return total_num;
}

//create a function multiplyTwo that take two parameters and return product of two numbers
num multiplyTwo(num first_digit, num second_digit){
  num total_num=first_digit*second_digit;
  return total_num;
}

//create a function divideTwo that take two parameters and return quotient of two numbers
num divideTwo(num first_digit, num second_digit){
  num total_num=first_digit/second_digit;
  return total_num;
}

//create a function stringLength that takes an argument and return the length of that string
int stringLength(String text){
  return text.length;
}

//create a function getFirstElement that takes a list as an argument and return the first element of that list
String getFirstElement(mylist){
  return mylist[0];
}