// SPDX-License-Identifier: MIT
pragma solidity 0.8;


contract Cipher {

    function compare(string memory x, string memory y) internal pure returns (bool) {
        bytes32 q = keccak256(abi.encodePacked((x)));
        bytes32 w = keccak256(abi.encodePacked((y)));
        return q == w;
    }

    function char_to_morse_code(string memory c) internal pure returns (string memory cipher) {
        if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("a")))) cipher = ".-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("b")))) cipher = "-...";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("c")))) cipher = "-.-.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("d")))) cipher = "-..";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("e")))) cipher = ".";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("f")))) cipher = "..-.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("g")))) cipher = "--.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("h")))) cipher = "....";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("i")))) cipher = "..";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("j")))) cipher = ".---";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("k")))) cipher = "-.-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("l")))) cipher = ".-..";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("m")))) cipher = "--";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("n")))) cipher = "-.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("o")))) cipher = "---";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("p")))) cipher = ".--.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("q")))) cipher = "--.-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("r")))) cipher = ".-.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("s")))) cipher = "...";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("t")))) cipher = "-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("u")))) cipher = "..-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("v")))) cipher = "...-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("w")))) cipher = ".--";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("x")))) cipher = "-..-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("y")))) cipher = "-.--";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("z")))) cipher = "--..";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("1")))) cipher = ".----";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("2")))) cipher = "..---";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("3")))) cipher = "...--";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("4")))) cipher = "....-";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("5")))) cipher = ".....";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("6")))) cipher = "-....";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("7")))) cipher = "--...";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("8")))) cipher = "---..";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("9")))) cipher = "----.";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked(("0")))) cipher = "-----";
        else if(keccak256(abi.encodePacked((c))) == keccak256(abi.encodePacked((" ")))) cipher = " ";
        else {revert("not default/defined char");}
    }
}


contract Test is Cipher {
    function morse(string memory c) public pure returns (string memory cipher) {
        return char_to_morse_code(c);
    }
}
