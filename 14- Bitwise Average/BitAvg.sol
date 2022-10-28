// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract BitwiseAverage {
     
    function average(uint x, uint y) public pure returns (uint) {
        return (x & y) + (x ^ y) / 2;
    }
}
