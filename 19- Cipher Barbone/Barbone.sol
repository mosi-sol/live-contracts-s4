// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Cipher {

    function compare(bytes4 x, bytes4 y) internal pure returns (bool) {
        bytes32 q = keccak256(abi.encodePacked((x)));
        bytes32 w = keccak256(abi.encodePacked((y)));
        return q == w;
    }

    function _T(string memory key) internal pure returns (bytes4 pass) {
        pass = bytes4(keccak256(abi.encode(key)));
    }
    
    function T(string memory key) public pure returns (bytes4 pass) {
        pass = _T(key);
    }

    function isValid(bytes4 pair, string memory key) public pure returns (bool) {
        bytes4 tmp = _T(key);
        // require(compare(pair, tmp), "not valid key/pair");
        // return true; 
        if(compare(pair, tmp)) return true;
        else return false;
    }
    
    /* Example pair:
    a=   0x61121a9e
    b=   0xe989e56b
    hi=  0xea69432e
    bye= 0x4c246a83
    */
}
