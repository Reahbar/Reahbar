pragma solidity ^0.8.13;

// NOTE: Deploy this contract first
contract Twocalled {
    // NOTE: storage layout must be the same as contract OneCall
    uint public num;
    address public sender;
    uint public value;
    string public text;

    function setVars(uint _num, string memory _text) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
        text = _text;
    }
}

contract OneCall {
    uint public num;
    address public sender;
    uint public value;
    string public text;

    function setVars(address _contract, uint _num, string memory _text) public payable {
        // OneCall's storage is set, Twocalled is modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256,string)", _num, _text) ); // Note:
            /* Inside the parameters uint256, afther this don't give space otherwise you will face the errors revert. The transaction has been reverted to the initial state.
               Reason provided by the contract: "Function call failed". //Debug the transaction to get more information. To avoid this don't give space after comma 
               ("setVars(uint256,string)", _num, _text) // It will work fine! */
            require(success, "Function call failed");
    }
}


    
