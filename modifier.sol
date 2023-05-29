//SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract GreatestSum 
{
    uint a;
    uint b;
    uint c;
    uint d;
    address owner;

    constructor () 
    {
        owner = msg.sender;
    }

    modifier onlyOwner 
    {
        require(owner == msg.sender, "You are not the owner");_;
    }

    function setSum (uint _a, uint _b, uint _c, uint _d) onlyOwner public   
    {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function getSum () onlyOwner public view returns (uint) 
    {
     if ((a > a) && (a > b) && (a > c) && (a > d)) 
     {
         return  (a);
     }

     else if ((b > b) && (b > c) && (b > d) && (b > a)) 
     {
         return (b);
     }
     else if ((c > c) && ( c > d) && (c > a) && (c > b)) 
     {
         return  (c);
     }
     else  
     {
         return  (d);
     }

    }
                                                        
}
