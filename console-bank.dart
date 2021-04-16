void main() {
  AccountInfo customer = AccountInfo(accountName: "Abdulsamad Osunlana", accountNumber: 3809156427, accountBalance: 109823.56);
  print(customer.accountName);
  print(customer.accountNumber);
  print(customer.accountBalance);
  customer.checkBalance();
  customer.deposit(1000000);
  customer.withdrawal(520000.07);
}


class AccountInfo {
  String accountName;
  int accountNumber;
  double accountBalance;

AccountInfo({String accountName, int accountNumber, double accountBalance}) {
  this.accountName = accountName;
  this.accountNumber = accountNumber;
  this.accountBalance = accountBalance;
}


void checkBalance() {
  print('Your available balance is $accountBalance');
}

void deposit(double credit) {
this.accountBalance = credit + accountBalance;
if (credit > 0) {
print('Money Deposited successfully! Your new account balance is ${this.accountBalance}. Thanks for banking with us!');
} else {
  print('Invalid input. Please type the amount you intend to deposit again. ');
}
}

void withdrawal(double debit) {
  this.accountBalance = accountBalance - debit;
  if (debit > this.accountBalance) {
    print('Insufficient funds!');
  }else {
    print('Withdrawal of $debit successful, Your new account balance is ${this.accountBalance}');
}
}

}
