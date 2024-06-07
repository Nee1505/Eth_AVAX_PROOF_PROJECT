// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

  constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
    _mint (msg.sender, 100 * 10**uint(decimals()));
}



    
  // Function for owner to mint new tokens
  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }

  // Function for any user to burn tokens
  function burn(uint256 amount) public {
    _burn(msg.sender, amount);
  }
}
 
