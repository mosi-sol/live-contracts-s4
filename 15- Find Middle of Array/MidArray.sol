// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Arrays {
    function average(uint x, uint y) private pure returns (uint) {
        return (x & y) + (x ^ y) / 2;
    }

    function arrayMid(uint[] memory data) internal pure returns (uint low, uint high, uint mid) {
        low = 0;
        high = data.length;
        require(high > 0, "array is empty");
        mid = average(low, high);
    }

    function findMid(uint[] memory data) public pure returns (uint) {
        ( , , uint mid) = arrayMid(data);
        return mid;
    }
}
