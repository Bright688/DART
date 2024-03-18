//create a bank app that can deposit  withdraw, retrieve balance and access.
//create a current account and savings account.

//create class BankAccount
class BankAccount{
  double _balance=0;
  
  
  //to deposit money
  deposit(double amount){
    //add money deposited to the current balance
    _balance += amount;
  }
  //to get the current balance 
  
  bool withdraw(double amount){
    if(amount<_balance){
       _balance -=amount;
       return true;
    }
    return false;
  }
  double get balance=> _balance;

}

//create a class savings account
class SavingsAccount extends BankAccount{
  //declare interestRate
  double _interestRate=0;

  //set the interestRate to the given value
  set InterestRate(double value){
     if(value>0){
        _interestRate = value;
     }
  
  }
  //add interest to the balance
  addInterest(){
    this._balance = (this._balance * _interestRate)+this._balance;
  }
  //to get the balance
  double get InterestRate=> _interestRate;
}

void main(){
  //create an instance of the object for current account
  var currentAccount = BankAccount();
  currentAccount.deposit(10000);
  currentAccount.withdraw(5800);
  print(currentAccount.balance);

  //create an instance of the object for savings account
  var savingsAccount = SavingsAccount();
  savingsAccount.deposit(1000);
  savingsAccount.InterestRate=0.95;
  print(savingsAccount.balance);
  savingsAccount.addInterest();
  print(savingsAccount.balance);
}
