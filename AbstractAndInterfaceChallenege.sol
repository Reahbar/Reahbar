// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Abstract Contract
abstract contract AbstractContract 
{
    function abstractFunction () virtual external view returns (string memory);
}

// Interface Contract

interface InterfaceContract
{
    function interfaceFunction () external view returns (string memory);
}

// Implementation of a and b

contract MyContract is AbstractContract, InterfaceContract 
{
    function abstractFunction () public pure override returns (string memory) {
        return "abstractfunction";
    }

    function interfaceFunction () public pure override returns (string memory) {
        return "interfacefunction";
    }
}
