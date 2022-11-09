// SPDX-License-Identifier: MIT
pragma solidity 0.8;


contract Cipher {

    function compare(string memory x, string memory y) internal pure returns (bool) {
        bytes32 q = keccak256(abi.encodePacked((x)));
        bytes32 w = keccak256(abi.encodePacked((y)));
        return q == w;
    }

    function morse_to_char(string memory x) internal pure returns (string memory cipher) {
        if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".-")))) 
            cipher = "a";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-...")))) 
            cipher = "b";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-.-.")))) 
            cipher = "c";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-..")))) 
            cipher = "d";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".")))) 
            cipher = "e";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("..-.")))) 
            cipher = "f";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("--.")))) 
            cipher = "g";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("....")))) 
            cipher = "h";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("..")))) 
            cipher = "i";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".---")))) 
            cipher = "j";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-.-")))) 
            cipher = "k";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".-..")))) 
            cipher = "l";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("--")))) 
            cipher = "m";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-.")))) 
            cipher = "n";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("---")))) 
            cipher = "o";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".--.")))) 
            cipher = "p";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("--.-")))) 
            cipher = "q";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".-.")))) 
            cipher = "r";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("...")))) 
            cipher = "s";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-")))) 
            cipher = "t";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("..-")))) 
            cipher = "u";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("...-")))) 
            cipher = "v";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".--")))) 
            cipher = "w";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-..-")))) 
            cipher = "x";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-.--")))) 
            cipher = "y";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("--..")))) 
            cipher = "z";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".----")))) 
            cipher = "1";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("..---")))) 
            cipher = "2";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("...--")))) 
            cipher = "3";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("....-")))) 
            cipher = "4";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((".....")))) 
            cipher = "5";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-....")))) 
            cipher = "6";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("--...")))) 
            cipher = "7";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("---..")))) 
            cipher = "8";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("----.")))) 
            cipher = "9";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked(("-----")))) 
            cipher = "0";
        else if (keccak256(abi.encodePacked((x))) == keccak256(abi.encodePacked((" ")))) 
            cipher = " ";
        else revert("not default char");
    }
}


contract Test is Cipher {
    function morse(string memory c) public pure returns (string memory cipher) {
        return morse_to_char(c);
    }
}
