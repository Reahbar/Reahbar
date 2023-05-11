// SPDX-License-Identifier: MIT

// Create a linkedin account for web3 actives share that in the posts for an example: smart contracts,functions, crypto currency, cointelegraph news, nft's, dApps, Defi, fintech,and etc
// Recommended 100% To imporve your profile for the blockchain job or etc Noted you got the work/job when you have skills and web3 knowledge suchs as blogs, blockchain or he knows about current news about web3 development he knows about it then you will land a job by the client because clients checks everything about your profile of linkin
// Watch Do this to land your 1st blockchain job FAST! Video and How to become a highly paid blockchain developer.
// In daily basics drop a post in linked related blockchain or web3 or etc.
// Mastering Ethereum, by Andreas M. Antonopoulos, Gavin Wood <- Must recommended to read it will increase the knowledge and you will learn a lot about it and etc must read and pratice.

// Arrays used to store multiple data but data type should be same.
// Struct used to store complax data types

// Look for the blockchain projects where the coders are creating look that projects understand and copy that project and create it.
// Look for others dao crypto projects and create a copy of that and you will learn a lot new things from that will will help to learm soidity more.
// Create pairs new paris for the blockchain projects.
// Learn Figma tools

pragma solidity ^0.8.0;

contract Struct {
// Arrays used to store multiple data but the data type should be same.
 uint public number = 1; // This stores only 1 data in inside the data type which is uint. If we want to store more data in single data type then we will use an array [] .
// We have two types of arrays One is fixed size array and the Second one is dynamic size array.

// In Dynamic size array we don't defined the size of an array which means we can store as much we needs to store the data.
// In fixed size array we can limit the size in inside the array for specfy not any size but specfy particluar number of limit.

uint [10000000000000000000] u; // Add one more 0 <- In this array and check the size of it.

// In the array when ever we store the data there is concept of data which starts from the 0 to 1 then it continues to up ++ means when ever we store the data that date stores from the 0 postion then it moves continues to move forward this also helps to indicate from which postion we stored etc particluar data..

// To Check the lenght of an array we used .length keyword.

uint [] public numbers;
struct ok {
    uint numbers;
}

function addElement (uint num) public {
numbers.push (num);
}

function size (uint index) public view returns (uint) {
   return numbers [index];
}

function sizeOfTotal () public view returns (uint) {  // <- This function will give us total numbers of array or we used for etc or balance;
    return numbers.length;
}

// Suppose If we want to remove/delete a particular value so for that we need to define in the indexes for an example look down below.

function remove (uint index) public { // This function delete no returns anything so we will not use any delete function.
delete numbers [index]; // We used (uint index) for if we need to give any eg number of postion to delete something/value and we used delete keyword to delete the value then we called an array then we use square brackets because in the array we use [] square brackets so for that we used then inside the bracks we use [index] index keyword which we delclared earlier.

}

function reduceLastDataValue () public {
    numbers.pop (); // In this function we don't need to declare an array [] for positon a number because the pop works to delete the last element. 
}
// Struct used to collect multiple data a group of collection of different data types.

}