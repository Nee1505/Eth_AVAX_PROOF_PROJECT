# Error Handling

In this Solidity program  we create a smart contract to demonstrate the error handling in solidity. This program demonstrates the functionality of require, assert and revert function.
## Description

This program is a written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.  The contract have three functions-the get_name, get_password and login function. Each function demonstrate the functionality of each error handling function. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Error_Handling.sol). Copy and paste the following code into the file:

```//SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

//write a smart contract that implements the require(), assert() and revert() statements.


contract Error_handling {
    string public username="Neelam";
    string public password="Neelam1505";
    
    //require that username is correct
    function get_name(string memory _name) public view returns(string memory) {
        require(keccak256(abi.encodePacked(username)) == keccak256(abi.encodePacked(_name)), "Invalid Username");
        return _name;
    }

    //Check that password is correct
    function get_password(string memory _password)public view returns(string memory){
        if (keccak256(abi.encodePacked(password)) != keccak256(abi.encodePacked(_password))) {
            revert("Incorrect Password");
        }
        else{
           return _password;
        }
    }

    //Assert that none of the fields are empty
     function login() public view {
        assert(bytes(username).length > 0 && bytes(password).length > 0);
    }
   
}



```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile Error_Handling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Error_Handling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the get_name, get_password and login function. Now, provide the input for the get_name and get_password functions and then click on call to get the output.

## Authors

Neelam Rani
