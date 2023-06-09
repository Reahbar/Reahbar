// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// NOTE: Deploy this contract first
contract Twocalled {
    // NOTE: storage layout must be the same as contract OneCall
    uint public num;
    address public sender;
    uint public value;
    int public additionalVariable;
    string public additionalAnotherVariable;

    function setVars(uint _num, int _additionalVariable, string memory _additionalAnotherVariable) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
        additionalVariable = _additionalVariable;
        additionalAnotherVariable = _additionalAnotherVariable;
    }
}

contract OneCall {
    uint public num;
    address public sender;
    uint public value;
    int public additionalVariable;
    string public additionalAnotherVariable;

    function setVars(address _contract, uint _num, int _additionalVariable, string memory _additionalAnotherVariable) public payable {
        // OneCall's storage is set, Twocalled is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256,int256,string)", _num, _additionalVariable, _additionalAnotherVariable)
        );
        require(success, "Function call failed");
        
    }
        
}

