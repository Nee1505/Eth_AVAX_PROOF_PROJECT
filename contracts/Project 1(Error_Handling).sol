//SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

//write a smart contract that implements the require(), assert() and revert() statements.


contract Error_handling {
    int public balance=0;
    
    function deposit(int amount) public returns(int) {
        //The minimum deposit amount is 10 wei
        require(amount >= 10, "You have to deposit at least 10 wei");
        balance +=amount;
        return balance;
    }

    function withdraw(int amount) public returns(int){
        //The balance must be greater than the withdrawal amount
        if (balance<amount) {
            revert("Insufficient balance");
        }
        else{
           balance -= amount;
           return balance;
        }
    }

    function checkBalance() public view returns(int){
        // Assert that balance is never below zero (should always hold)
        assert(balance >= 0);
        return balance;
    }
   
}
