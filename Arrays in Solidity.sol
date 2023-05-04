// SPDX-License-Identifier: MIT

/*Arrays, Structs, Mapping, Gas and Conditional Statements
Arrays in Solidity*/

/*Arrays in Solidity
We’ll start by watching arrays in action, and then by the end of the lesson, you can do the coding! This video will up your game and teach you all
the ways to integrate arrays in your code. 
*/
pragma solidity ^0.8.0;

contract ArraysInSolidity {

int [] public  aDynamicArray; //Dynamic means that the size of array can't change for this example we will create a Dynami array of uint or int.
int [10] public aFixedSizeArray; // Fixed size means that the size of array is cannot change onec we set the size of the array we cannot shrink it or grow it for this example i'll create a fixed size array of type int.

uint [] internal iDynamicArray; //Dynamic means that the size of array can't change for this example we will create a Dynami array of uint or int.
uint [8] internal iFixedSizeArray; // Fixed size means that the size of array is cannot change onec we set the size of the array we cannot shrink it or grow it for this example i'll create a fixed size array of type int.

uint [] public o = [1,2,3];
uint [3] public oo = [4,5,6];
// uint public io = 1,2,3; <- I'm not able to put numbers with commos to that we have to use [] and after the variable we have to declare like this [1]; or [1,2,3] . we can do in unt wihout array  uint public p = 123;

function example () public {
    o.push (4); // .push () this keyword worked as to increment one input  like this [1,2,3,4] 4 is that element we just .push (4) right now end of the array.
    // You won't able to .push () in fixed size array because of the size it will change.

    // To get an array element you can just access it by the index for example we will get the first element by declaring state variable  value which is right 
          /* now o brackets [] and we will add a input of array which is 1 this will get the first element from the o array which will be equal to 2  why 2 in the data bases numbers stored from 0 1 and goes on 
          in our array we stored the number 1 at the postion of 0 and the 2 at the postion of 1the type of the element is uint  so i've */
  // The type of element is uint so I declared a variable uint and name the e.
       uint e = o[1];
            

            // To update an array you just have to reassign an element at the index you want to update for an exampe let's say we want to update the element at 
            
    o[0] = 11; // This will look like this [11,2,3,4] <- 11 is the element we just updated
    o[1] = 22; // This will look like this [11,22,3,4] <- 22 is the element we just updated
    o[2] = 33; // This will look like this [11,22,33,4] <- 33 is the element we just updated
    o[3] = 44; // This will look like this [11,22,33,44] <- 44 is the element we just updated
    o.push (5); // This will look like this [11,22,33,44,5] <- 5 is the element we just push by declaring state variable value which is o.push then we
                // added parentheses and the number we want to add/push which is 5 right now. 
    o.push (6); //[11,22,33,44,5,6] that 5 will be called D5 which means default because we added a new number by declaring state variable value o and .push
                // o.push then parenthese () and added a input which is 6 we didn't made any changes to 5 so thats will be called default number it could be a any number. 
    
    // If you want to delete the element from an array then you use the keyword delete followed by the place in the array that you want to delete let's say we want to delete
    // the element at index 1 then we will type/call sate variable which is o and use declare the array [] and the position of the number for example 1;
    delete o[1]; // this will clear the element stored that nums at index one and it will set it to the default value the default of uint is 0
    // so now the array will look something this [11,0,33,44,5,6]
    // The length of the array still remains the same this is something that you will need to keep in mind when you're coding in soldity.

    // If you want to shrink the size of the array then there is one method that is available and it is called pop.
    // pop will remove the last element from the array so if i type o whih i habe to declared its a state variable which is o.pop then it will remove the last element 
    // being 6 so now the array will look like this [11,22,33,44,5] The last element which was 6 is now removed after using this pop commend.
    o.pop() ; // why only parenthese () why no input because to push a specify number we use parenthese () and inside we add a number but in this case we will also use 
    // parenthese () for shrink the size of an array but we will not give any inputs or arguments specify because pop use to remove the last element it could be a number or address it could be any data type part.


    // To get the current length of the array you can call .length but make sure you delcared the variable it could be sate or local.
    
    o.length;
// Some times you will need to create an arry in memory so i'll show you an example how to create array in memory for this example we will create an array of uint agian and we declared the type by uint then array [] then memory because we want to create array in memory then variable name which is x then intialize the array.
 //   uint[] memory x = uint[](5);
 // parenthese we used in arrays for memory inside parenthese we specify the size of the array i'll say that the size of a array is 5
    // and then semicolon ; This is how you can create an array in memory notice that the array in memory have to be a fixed size. 
    // You won't able to call functions like push and pop.
    // So that the only thing you will able to do with array is just update or get the value for an example we can updat the element in memory by declaring variable o then array [] then inside the array we have to input a postion for an example 0 then will equal to 111; previous element at 0 positon it was 11 but now we updated into 111;
    o[0] = 111;

    uint getPostionFromDataBase = o[0];

  

}
address [] public addr = [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db];

function exampleOfAddress () external {
addr.push (0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB); // So now the array will look like this [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB]; because we push/added a new address into the array.
addr.push (0x617F2E2fD72FD9D5503197092aC168c91465E7f2); // So now the array will look like this [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, 0x617F2E2fD72FD9D5503197092aC168c91465E7f2]; because we push/added a new address into the array.
address getStoredAddressFromPositionPlace = addr[0]; // This function will give you the access or you can say you can look what inside the stored at position of 0;
// we use addressd instead of uint becuase uint is datatype for unsigninteager numbers and address is a datatype for etherum address which is 20bytes (160-bites)
// 160 bits etherum address represent 20 bytes hexadecimal numbers 40 characters length when it is writen is hexadecimal format;
delete addr[2]; // This will delete or you can say clear the address which is stored at the postion of 2 then it will look like this -> Down below!
// [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 000000000000000000000000000000000000000000, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB];
// 2nd postion of address which was stored is clear now and the default adddress is 000000000000000000000000000000000000000000;
}  


function returnArrays () public view returns (uint [] memory) {
    return o;
}

function rketurnArrays () public view returns (address [] memory) {
    return addr;
}

//Here i have created a function called returnArrays what this does is returns the state variables o which is an array of uint notice that the return type is an array
// of uint or it could be any and we declared it is memory because this tell soldiity we want to copy sate variable o into memory and then return it.
// Now returning the array from a function is not recommended the reason is similar to why you would want to keep your for loop small the bigger the array the more gas
// it will use if the array is too big it can use all of the gas and this function will be unusable so in summary you can wirte a function that returns an array but it is not recommended.


}