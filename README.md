# Bank

An app that allows you to deposit amounts, withdraw amounts, and print a statement of your transactions.

## Structure

Since the requirements  are for just one account, it only has one bank account class that can do basic functions.

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
