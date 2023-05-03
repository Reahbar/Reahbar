// SPDX-License-Identifier: MIT

//Primitive Data Types in Solidity Challenge

// Write a smart contract that takes some ether from the user. Find out its value in units of: wei, ether, gwei 

pragma solidity ^0.8.0;

contract Challenge {

    // Defines constants for ether, gwei, and wei values
    string constant etherValue = "1 (one) ether";
    string constant gweiValue = "1,000,000,000 (one billion) gwei";
    string constant weiValue = "1,000,000,000,000,000,000 (1 quintillion) wei.";
 
    // Function to accept ether sent to the contract
    function Deposit () payable public {
        // This function does nothing but accept the ether sent to the contract
    }

    // Return the value of a constant variable of etherValue 
    function getEtherValue () public pure returns (string memory) { 
        // This function returns the constant string "1 (one) ether
        return etherValue;     
    }
    // Return the value of a constant variable of gweirValue 
    function getGweiValue () public pure  returns (string memory) {
        // This function returns the constant string "1,000,000,000 (one billion) gwei"
        return gweiValue;
    }

    // Return the value of a constant variable of weiValue 
    function getWeiValue () public pure returns (string memory) {
        // This function returns the constant string "1,000,000,000,000,000,000 (1 quintillion) wei."
        return weiValue;
    }
   
}

