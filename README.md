# Error Handling

In this Solidity program  we create a smart contract to demonstrate the error handling in solidity. This program demonstrates the functionality of require, assert and revert function.
## Description

This program is a written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.  The contract have three functions-the deposit, withdraw and checkbalance function. Each function demonstrate the functionality of each error handling function. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Error_Handling.sol). Copy and paste the following code into the file:

```//SPDX-License-Identifier: MIT
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





```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile Error_Handling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Error_Handling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint, burn and  function. Now, provide the input for the deposit , withdraw and checkbalance functions and then click on transact to get the output.

## Authors

Neelam Rani
