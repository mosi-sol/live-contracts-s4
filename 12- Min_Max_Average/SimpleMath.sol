// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract SimpleMath {
    function min(uint x, uint y) public pure returns (uint) {
        return (x < y ? x : y);
    }
 
    function max(uint x, uint y) public pure returns (uint) {
        return (x > y ? x : y);
    }
 
    function average(uint x, uint y) public pure returns (uint) {
        return (x + y) / 2;
    }
}
