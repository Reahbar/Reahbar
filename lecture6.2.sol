// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Team {

    struct Player {
        string name;
        string lastname;
        uint age;
        uint officenumber;
        address web3;
    }

    Player [] public _player;

    function addPlayer (string memory name, string memory lastname, uint age, uint officenumber, address web3) external {
        _player.push ( Player (name, lastname, age, officenumber, web3));
    }

    function checkDataBase (uint index) external view {
        _player [index];
    }

  
}