// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

contract ViewAndPure 
{
uint public number;

function viewFunction (uint x) public view returns (uint) 
{
    return number + x;
}

function pureFunction (uint y, uint x, uint z) public pure returns (uint) 
{
    return (y + x + z);
}

}