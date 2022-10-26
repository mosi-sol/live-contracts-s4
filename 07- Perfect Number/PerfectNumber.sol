// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract PerfectNumber {

    function perfectNum(uint num) public pure returns (bool s) {
        require(num != 0,"0 is not valid");
        uint sum = 0;
        uint div = 0;
        for(uint i = 1; i < num; i++) {
            div = num % i;
            if (div == 0) sum = sum + i;
        }

        sum == num ? s = true : s = false;
    }

}
