// SPDX-License-Identifier: MIT
pragma solidity 0.8;


contract Cipher {

    function compare(string memory x, string memory y) internal pure returns (bool) {
        bytes32 q = keccak256(abi.encodePacked((x)));
        bytes32 w = keccak256(abi.encodePacked((y)));
        return q == w;
    }

    function morse_to_char(string memory x) internal pure returns (string memory cipher) {
        if(compare(x, ".-")) cipher = "a";
        else if (compare(x, "-...")) cipher = "b";
        else if (compare(x, "-.-.")) cipher = "c";
        else if (compare(x, "-..")) cipher = "d";
        else if (compare(x, ".")) cipher = "e";
        else if (compare(x, "..-.")) cipher = "f";
        else if (compare(x, "--.")) cipher = "g";
        else if (compare(x, "....")) cipher = "h";
        else if (compare(x, "..")) cipher = "i";
        else if (compare(x, ".---")) cipher = "j";
        else if (compare(x, "-.-")) cipher = "k";
        else if (compare(x, ".-..")) cipher = "l";
        else if (compare(x, "--")) cipher = "m";
        else if (compare(x, "-.")) cipher = "n";
        else if (compare(x, "---")) cipher = "o";
        else if (compare(x, ".--.")) cipher = "p";
        else if (compare(x, "--.-")) cipher = "q";
        else if (compare(x, ".-.")) cipher = "r";
        else if (compare(x, "...")) cipher = "s";
        else if (compare(x, "-")) cipher = "t";
        else if (compare(x, "..-")) cipher = "u";
        else if (compare(x, "...-")) cipher = "v";
        else if (compare(x, ".--")) cipher = "w";
        else if (compare(x, "-..-")) cipher = "x";
        else if (compare(x, "-.--")) cipher = "y";
        else if (compare(x, "--..")) cipher = "z";
        else if (compare(x, ".----")) cipher = "1";
        else if (compare(x, "..---")) cipher = "2";
        else if (compare(x, "...--")) cipher = "3";
        else if (compare(x, "....-")) cipher = "4";
        else if (compare(x, ".....")) cipher = "5";
        else if (compare(x, "-....")) cipher = "6";
        else if (compare(x, "--...")) cipher = "7";
        else if (compare(x, "---..")) cipher = "8";
        else if (compare(x, "----.")) cipher = "9";
        else if (compare(x, "-----")) cipher = "0";
        else if (compare(x, " ")) cipher = " ";
        else revert("not default char");
    }

    function char_to_morse(string memory c) internal pure returns (string memory cipher) {
        if(compare(c, "a")) cipher = ".-";
        else if(compare(c, "b")) cipher = "-...";
        else if(compare(c, "c")) cipher = "-.-.";
        else if(compare(c, "d")) cipher = "-..";
        else if(compare(c, "e")) cipher = ".";
        else if(compare(c, "f")) cipher = "..-.";
        else if(compare(c, "g")) cipher = "--.";
        else if(compare(c, "h")) cipher = "....";
        else if(compare(c, "i")) cipher = "..";
        else if(compare(c, "j")) cipher = ".---";
        else if(compare(c, "k")) cipher = "-.-";
        else if(compare(c, "l")) cipher = ".-..";
        else if(compare(c, "m")) cipher = "--";
        else if(compare(c, "n")) cipher = "-.";
        else if(compare(c, "o")) cipher = "---";
        else if(compare(c, "p")) cipher = ".--.";
        else if(compare(c, "q")) cipher = "--.-";
        else if(compare(c, "r")) cipher = ".-.";
        else if(compare(c, "s")) cipher = "...";
        else if(compare(c, "t")) cipher = "-";
        else if(compare(c, "u")) cipher = "..-";
        else if(compare(c, "v")) cipher = "...-";
        else if(compare(c, "w")) cipher = ".--";
        else if(compare(c, "x")) cipher = "-..-";
        else if(compare(c, "y")) cipher = "-.--";
        else if(compare(c, "z")) cipher = "--..";
        else if(compare(c, "1")) cipher = ".----";
        else if(compare(c, "2")) cipher = "..---";
        else if(compare(c, "3")) cipher = "...--";
        else if(compare(c, "4")) cipher = "....-";
        else if(compare(c, "5")) cipher = ".....";
        else if(compare(c, "6")) cipher = "-....";
        else if(compare(c, "7")) cipher = "--...";
        else if(compare(c, "8")) cipher = "---..";
        else if(compare(c, "9")) cipher = "----.";
        else if(compare(c, "0")) cipher = "-----";
        else {revert("not default char");}
    }

    function hash(string memory str, address recipient) internal pure returns (bytes memory build) {
        build = abi.encode(str, recipient);
    }

    function dehash(bytes memory str) internal view returns (string memory build, address recp) {
        (build, recp) = abi.decode(str, (string,address));
        require(recp == msg.sender, "privacy is important");
    }
}


contract Test is Cipher {

    function receiveMsg(bytes memory message) public view returns (string memory) {
        (string memory code, ) = dehash(message);
        return morse_to_char(code);
    }

    function sendMsg(string memory letter, address recipient) public pure returns (bytes memory) {
        return hash(char_to_morse(letter), recipient);
    }

}
