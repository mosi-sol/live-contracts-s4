// SPDX-License-Identifier: MIT
pragma solidity 0.8;

import "./CharToMorse.sol";
// import "./MorseToChar.sol";


contract TestWord is Cipher {
    function concat(string memory _first, string memory _second) internal pure returns (string memory) {
		return string(abi.encodePacked(_first, _second));
	}

    function morse(string[] memory c) public pure returns (string memory cipher) {
        uint j = c.length;
        string memory res;
        string memory tmp;
        for(uint i = 0; i < j; i++){
            // tmp = morse_to_char(c[i]);
            tmp = char_to_morse(c[i]);
            res = concat(res, tmp);
            tmp = "";
        }
        string memory fin = res;
        res = "";
        cipher = fin;
    }
}
