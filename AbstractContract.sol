// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

abstract contract FallabackAndPayableChallenge {
    mapping(address => uint) public balance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "You are not the owner");
        require(balance[msg.sender] > 0, "Balance should be greater than 0");
        _;
    }

    function deposit() virtual public payable returns (uint);

    function getBalance() virtual public view returns (uint);

    function deleteBalance() virtual public;

    function withdrawBalance(uint amount) virtual public returns (uint);

     /*function getDeployerAccountAddress () virtual public view returns (address) { // In the abstract contract we can implement the function inside abstract contract but we can not do in the interface contract.
        return owner
    }*/

}

contract b is FallabackAndPayableChallenge {
    event Deposit(address indexed account, uint amount);
    event DeleteBalance(address indexed account, uint amount);
    event WithdrawBalance(address indexed account, uint amount);
    event Receive(address indexed account, uint amount);
    event Fallback(address indexed account, uint amount);

    receive() external payable {
        emit Receive(msg.sender, msg.value);
        deposit();
    }

    function deposit() public payable override returns  (uint) {
        emit Deposit(msg.sender, msg.value);
        balance[msg.sender] += msg.value;
        return balance[msg.sender];
    }

    function getBalance() public view override returns (uint) {
        return balance[msg.sender];
    }

    function deleteBalance() public override {
        emit DeleteBalance(msg.sender, balance[msg.sender]);
        delete balance[msg.sender];
    }

    function withdrawBalance(uint amount) public override returns (uint) {
        require(balance[msg.sender] >= amount, "Insufficient balance");
        emit WithdrawBalance(msg.sender, amount);
        balance[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        return balance[msg.sender];
    }


}
