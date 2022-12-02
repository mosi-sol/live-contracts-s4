// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Cipher {
    // locate
    mapping(string => uint) private design; 

    constructor() {
        setup();
    }

    function setup() private {
        design["a"] =  1;
        design["b"] =  2;
        design["c"] =  3;
        design["d"] =  4;
        design["e"] =  5;
        design["f"] =  6;
        design["g"] =  7;
        design["h"] =  8;
        design["i"] =  9;
        design["j"] =  10;
        design["k"] =  20;
        design["l"] =  30;
        design["m"] =  40;
        design["n"] =  50;
        design["o"] =  60;
        design["p"] =  70;
        design["q"] =  80;
        design["r"] =  90;
        design["s"] =  100;
        design["t"] =  200;
        design["u"] =  300;
        design["v"] =  400;
        design["w"] =  500;
        design["x"] =  600;
        design["y"] =  700;
        design["z"] =  800;
    }

    // view key
    function _T(string memory key) internal view returns (uint) {
        return design[key];
    }

    function _sum(string[] memory value) internal view returns (uint) {
        uint j = value.length;
        uint tmp = 0;
        for(uint i = 0; i < j; ++i) {
            tmp += _T(value[i]);
        }
        return tmp;
    }

}

contract Test is Cipher {
    function T(string memory key) public view returns (uint) {
        return _T(key);
    }

    function sum(string[] memory value) public view returns (uint) {
        return _sum(value);
    }
}
