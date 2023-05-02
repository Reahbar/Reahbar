// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract IntroductionToSolidityChallenge {

    uint value;
    bool mybool;
    string message;
    address account;
    
    // Takes a value then assign to it with State varible value
    function setValue (uint _value) public {
        value = _value;
    }

    // Return the vlue of the State varible value
    function getValue () public view returns (uint) {
        return value;
    }

    // Takes a value then assign to it with State variable value
    function setBool (bool _mybool) public {
        mybool = _mybool;
    }

    // Return the value of the State varible value
    function getBool () public view returns (bool) {
        return mybool;
    }

    // Takes a value then assign to it with State varible value
    function setMessage (string memory _input) public {
        message = _input;
    } 

    // Return the value of the State varible value
    function getMessage () public view returns (string memory) {
        return message;
    }

    // Takes a value then assign to it with State varible value
   function setAccountAddress (address _input) public {
       account = _input;
   }

    // Return the value of the State varible value
   function getAccountAddress () public view returns (address) {
       return account;
   }

} 





