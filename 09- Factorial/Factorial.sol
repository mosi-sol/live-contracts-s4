// SPDX-License-Identifier: MIT
pragma solidity 0.8;

// 4! = 1*2*3*4 = 24
// 5! = 5*4*3*2 = 120
contract FactorialNumber {
    
    // normal - look like the formula
    function factorNType1(uint num) public pure returns (uint) {
        uint cach = 1;

        if(num == 0 || num == 1) {
            return 1;
        }

        for (uint i = 2; i <= num; i++) cach = cach * i;

        return cach;
    }
    
    // advance - look like formula
    function factorNType2(uint num) public pure returns (uint) {
        uint cach = 1;
        
        for(uint i = num; i > 1; i--){
            cach = cach * i;
        }
        
        if(num == 0) cach = 1;

        return cach;
    }
    
    // recursion style - memory overflow in big numbers
    function factorNType3(uint num) public pure returns (uint) {
        if(num == 0 || num == 1) {
            return 1;
        }

        return num * factorNType3(num-1);
    }
    
    // tail recursive - best style of coding code [functional programming]
    function factorNType4(uint num) public pure returns (uint) {
        return tailRecursive(num, 1);
    }

    function tailRecursive(uint num, uint result) private pure returns (uint) {
        // result = 1; // this is require for start, at continue look like a mesh-tmp variable
        if(num == 0 || num == 1) {
            return result;
        } else {
            return tailRecursive(num - 1, result * num);
        }
    }
    
}
