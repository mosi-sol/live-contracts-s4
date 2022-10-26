// SPDX-License-Identifier: MIT
pragma solidity 0.8;

// calculate power using recursion
contract PowerNums {

    // the logic of power number
    function power(uint baseNum, uint powerNum) public pure returns (uint result) {
        powerNum != 0 ? result = baseNum * power(baseNum, powerNum - 1) : result = 1;
    }

}
