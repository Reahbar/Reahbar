// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract FallabackAndPayableChallenge {

    mapping (address => uint) public balance;
    address public owner;

    constructor () {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "You are not the owner");_;
        require (balance [msg.sender] >0,"Balance should be greater than 0");_;
    }
    
    event Deposit (address indexed account, uint amount);
    event DeleteBalance (address indexed account, uint amount);
    event WithdrawBalance (address indexed account, uint amount);
    event Receive (address indexed account, uint amount);
    event Fallback (address indexed account, uint amount);

    receive () external payable {
        emit Receive (msg.sender, msg.value);
        deposit ();
    }

    function deposit () payable public returns (uint) {
        emit Deposit (msg.sender, msg.value);
        balance [msg.sender] += msg.value;
        return balance [msg.sender];
    }

    function getBalance () public view returns (uint) {
        return balance [msg.sender];
    }

    function deleteBalane () payable public onlyOwner{
        emit DeleteBalance (msg.sender, msg.value);
        delete balance [msg.sender];
    }
    function withdrawBalance(uint amount) payable public onlyOwner {
        emit WithdrawBalance (msg.sender, msg.value);
        payable(msg.sender).transfer(amount);
    }

    fallback () payable external  {
       emit Fallback (msg.sender, msg.value);
    }
}
