//SPDX-License-Identifier: MIT 

pragma solidity >=0.8.0;

contract complexOperationOne  {

    function runComplexOperationOne (uint _x, uint _y, uint _z) external pure returns (uint) {
        uint result;
        for (uint i = 0; i < 100; i++) {
            result = result + (_x + _y + _z) * (i * 1);
        }
        return result;
    }

}


contract complexOperationTwo {

    function runComplexOperationTwo (uint _x, uint _y, uint _z) external pure returns (uint) {
        uint result;
         for (uint i = 0; i < 100; i++) {
             if ( _x > _y && _y > _z) {
                 result += _x - _y + _z;
             } else if ( _y > _x && _y > _z) {
                 result += _y - _x + _z;
             } else {
                 result += _x + _y + _z;
             }

             for (uint j = 0; j < i; j++) {
                 result *= j;
             }
             if ( i== 10) {
                 continue;
             }
             else if ( i == 50) {
                 continue;
             } 
         }
         return result;
    }
}

