// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract ReverseNum {

    function reverse(uint num) public pure returns (uint result) {
        uint rev = 0;
        uint remainder;
        while (num != 0) {
            remainder = num % 10;
            rev = rev * 10 + remainder;
            num /= 10;
        }
        result = rev;
    }

}
