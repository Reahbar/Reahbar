// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

contract FunctionChallenge 
{

    address payable internal owner; 
    uint internal number = 1;

    constructor () 
    {
        owner = payable (msg.sender);
    }

    function deposit () payable external 
    {

    }
    
    function getBalance () external view returns (uint) 
    {
       return address (this) .balance;
    }

    function testView (uint _number) internal view returns (uint) 
    {
        return number + _number;
    }

    function testView2 () internal view returns (uint) 
    {
        return number;
    }

    function testPure (uint numbers,uint _numbers) internal pure returns (uint) 
    {
        return numbers + _numbers;
    }

    function testPure2 (uint x) internal pure returns (uint) {
        return x * x;
    }

    
   

    

}
