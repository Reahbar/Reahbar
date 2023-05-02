// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

// Write a simple contract and declare four different types of variables. Write get and set functions for each of these variables.
// Return the value of the variable in the “set function”.

contract IntroductionToSolidityChallenge {

    uint value;
    bool mybool;
    string message;
    address account;
    
    // Takes a value then assign to it with State varible value.
    // Return the value of the variable in the “set function.
    function setValue (uint _value) public returns (uint) {
        value = _value;
        return value;
    }

    // Return the vlue of the State varible value.
    function getValue () public view returns (uint) {
        return value;
    }

    // Takes a value then assign to it with State variable value.
    // Return the value of the variable in the “set function.
    function setBool (bool _mybool) public returns (bool) {
        mybool = _mybool;
        return mybool;
    }

    // Return the value of the State varible value.
    function getBool () public view returns (bool) {
        return mybool;
    }

    // Takes a value then assign to it with State varible value.
    // Return the value of the variable in the “set function.
    function setMessage (string memory _input) public returns (string memory) {
        message = _input;
        return message;
    } 

    // Return the value of the State varible value.
    function getMessage () public view returns (string memory) {
        return message;
    }

    // Takes a value then assign to it with State varible value.
    // Return the value of the variable in the “set function.
   function setAccountAddress (address _input) public returns (address) {
       account = _input;
       return account;
   }

    // Return the value of the State varible value.
   function getAccountAddress () public view returns (address) {
       return account;
   }

} 





