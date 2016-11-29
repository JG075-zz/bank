# Bank

An app that allows you to deposit amounts, withdraw amounts, and print a statement of your transactions.

## Structure

The app is separated into two parts: Bank and Account. When bank is created it requires an account. The balance, and methods to modify the balance are stored in the User class. Currently it only works with one account.

## Setup

To run the app:

```
$ git clone [REPO]
$ cd bank
$ irb
$ require_relative './lib/bank'
$ require_relative './lib/user'
```

## Example

Inside IRB:

```
$ user = User.new
$ bank = Bank.new(user)
$ bank.deposit(500)
$ bank.withdraw(200)
$ bank.print_statement
```

## Testing

To test the app:

```
$ rspec
```
