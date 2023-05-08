// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArithmeticOperations {

    uint256 public addResult;
    uint256 public subResult;
    uint256 public mulResult;
    uint256 public divResult;
    uint256 public modResult;
    uint256 public forResult;

    function add(uint256 _a, uint256 _b) public {
        addResult = _a + _b;
    }

    function subtract(uint256 _a, uint256 _b) public {
        subResult = _a - _b;  
    }

    function multiply(uint256 _a, uint256 _b) public{
        mulResult = _a * _b;
    }

    function divide(uint256 _a, uint256 _b) public  {
        divResult = _a / _b;  
    }

   function modules (uint256 _a, uint _b) public {
       modResult = _a % _b;
   }
   
   function addLoop (uint256 _a, uint256 _b) public {
       for (uint i = 0; i < 100; i++) {
           forResult = _a = _b;
       }
   }

}
