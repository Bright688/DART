import 'dart:io';
import 'dart:core';

bool winner = false;
bool isXturn = true;
int moveCount = 0;
bool match = false;
String player_Won = 'none';

String clear='clear';
List<String>values=['1', '2', '3', '4', '5', '6', '7', '8', '9'];
List<List<String>> combinations = [
  ['0', '1', '2'], 
  ['0', '4', '8'], 
  ['0', '1', '6'], 
  ['1', '4', '7'], 
  ['2', '4', '6'], 
  ['3', '4', '5'], 
  ['6', '7', '8']
];

void main(){
 
    //call the generateBoard function to draw tic tac toe board
    generateBoard();
    //call the getnextCharacter function to get player input and change turn
    getnextCharacter();


   do{
     //until we get a winner, call getnextCharacter funvtion again
     if(winner==false) getnextCharacter();
     if(moveCount==9){
       break;
     }
   }
  while(true);
  }

  //create function to draw the tic tac toe board
  void generateBoard(){
    
    print(' ${values[0]} | ${values[1]} | ${values[2]} ');
    print(' ${values[3]} | ${values[4]} | ${values[5]} ');
    print(' ${values[6]} | ${values[7]} | ${values[8]} ');
    
  }

  //create function to get the user input when its their turn to play the game and increment the move count!
  void getnextCharacter(){
    print('Choise number ${isXturn==true ? 'x' : 'o'}');

    //get user input for the number to place 'x'
    int number = int.parse(stdin.readLineSync()!);
    //add x to the value entered by the user.
    values[number-1] = isXturn ? 'x' : 'o';
    //change player turn
    isXturn = !isXturn;
    //increment the moveCount

    moveCount++;
    //set winner to true if moveCount is 9
    if(moveCount == 9){
      //check the validity for 'x' players, declare winner;
       checkWinner('x');
     //check the validity fo 'o' player
       checkWinner('o');
    }else{
      //clear the console if the winner is a tie.
      clearScreen();
      //Redraw the tic tac toe board if the winner is a tie
      generateBoard(); 
    }
  }
  //function for clearing the console
  String clearScreen(){
    return clear;
  }

  //create function to check the combination of the number entered
  void checkCombination(String checkfor){
    
    //loop through the combinations list
    for(final combination in combinations){
      //iterate the three items in the list in the combinations
      int number1 = int.parse(combination[0]);
      int number2 = int.parse(combination[1]);
      int number3 = int.parse(combination[2]);
      //if the players numbers matches the number of combination match true and set the player_Won 
      if(values[number1]==checkfor && values[number2]==checkfor && values[number3] == checkfor){
        match=true;
        player_Won=values[number1];
        break;
      }else{
        match=false;
      }      
    }
  }

  void checkWinner(String player){
      //invoke the checkCombination function and pass.the parameter players 'x' or 'o'
      checkCombination(player);
      //print player that won and print result
        print('${player_Won} won');
        
  }


