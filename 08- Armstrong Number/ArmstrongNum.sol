// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract ArmstrongNumber {

    function armstrong(uint num) public pure returns (bool result) {
        uint tmp = num;
        uint cach;
        uint sum = 0;
        while(tmp != 0){
            cach = tmp % 10;
            sum = sum + cach * cach * cach;
            tmp = tmp / 10;
        }
        sum == num ? result = true : result = false;
    }

}
