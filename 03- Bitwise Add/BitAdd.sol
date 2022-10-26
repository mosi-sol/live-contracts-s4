// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract BitAdd {
    function add(uint a, uint b) public pure returns (uint) {
        uint c;
        while(b != 0){
            c = a & b;
            a = a ^ b;
            b = c << 1;
        }
        return a;
    }
}

/*
library BitAdd {
    function add(uint a, uint b) public pure returns (uint) {
        uint c;
        while(b != 0){
            c = a & b;
            a = a ^ b;
            b = c << 1;
        }
        return a;
    }
}

contract test {
    using BitAdd for uint;
    function adds(uint a, uint b) public pure returns (uint) {
        return a.add(b);
    }
}
*/
