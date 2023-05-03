// SPDX-License-Identifier: MIT

//Primitive Data Types in Solidity Challenge

// Write a smart contract that takes some ether from the user. Find out its value in units of: wei, ether, gwei 

pragma solidity ^0.8.0;

contract EtherValueConverter {

    // Defines public variable for ether, gwei, and wei values.
    uint public weiValue; // defines a public state variable named weiValue, which is an unsigned integer representing the amount of wei held by the contract.
    uint public etherValue; //defines a public state variable named etherValue, which is an unsigned integer representing the amount of ether held by the contract.
    uint public gweiValue; // defines a public state variable named gweiValue, which is an unsigned integer representing the amount of gwei held by the contract.

    // Function to accept ether sent to the contract
    function deposit() public payable {
    // Do nothing, just accept the ether and send to the contract
    }
  
    // Function to calculate the values of wei, ether, and gwei in the contract
    function calculateValues() public {
    weiValue = address(this).balance; // Stores the balance of ether in the contract in wei units
    etherValue = weiValue / 1 ether; // Calculates the value of ether in the contract by dividing the wei balance by 1 ether
    gweiValue = weiValue / 1 gwei; // Calculates the value of gwei in the contract by dividing the wei balance by 1 gwei
}
    

    
}