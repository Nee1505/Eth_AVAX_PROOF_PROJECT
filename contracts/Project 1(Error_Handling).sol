//SPDX-License-Identifier: MIT
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
     function check_both_fields() public view {
        assert(bytes(username).length > 0 && bytes(password).length > 0);
    }
   
}
