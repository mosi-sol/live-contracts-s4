// SPDX-License-Identifier: MIT
pragma solidity 0.8;

// 4! = 1*2*3*4 = 24
// 5! = 5*4*3*2 = 120
contract FactorialNumber {
    
    function factorNType1(uint num) public pure returns (uint) {
        uint cach = 1;

        if(num == 0 || num == 1) {
            return 1;
        }

        for (uint i = 2; i <= num; i++) cach = cach * i;

        return cach;
    }
    
    function factorNType2(uint num) public pure returns (uint) {
        uint cach = 1;
        
        for(uint i = num; i > 1; i--){
            cach = cach * i;
        }
        
        if(num == 0) cach = 1;

        return cach;
    }
    
    function factorNType3(uint num) public pure returns (uint) {
        if(num == 0 || num == 1) {
            return 1;
        }

        return num * factorNType3(num-1);
    }
    
}
