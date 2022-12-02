// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Cipher {
    // locate
    mapping(string => string) private design; 

    // init
    constructor() {
        _design1();
    }

    // setup key/pair - enigma (shift5-start10) method 
    function _design1() internal {
        design["a"] = "j";
        design["b"] = "u";
        design["c"] = "e";
        design["d"] = "p";
        design["e"] = "-";
        design["f"] = "k";
        design["g"] = "v";
        design["h"] = "f";
        design["i"] = "q";
        design["j"] = "a";
        design["k"] = "l";
        design["l"] = "w";
        design["m"] = "g";
        design["n"] = "r";
        design["o"] = "b";
        design["p"] = "m";
        design["q"] = "x";
        design["r"] = "h";
        design["s"] = "s";
        design["t"] = "c";
        design["u"] = "n";
        design["v"] = "y";
        design["w"] = "i";
        design["x"] = "t";
        design["y"] = "d";
        design["z"] = "o";
        design["-"] = "z";
    }

    // setup key/pair - enigma (shift3-start6) method 
    function _design2() internal {
        design["a"] = "r";
        design["b"] = "i";
        design["c"] = "-";
        design["d"] = "s";
        design["e"] = "j";
        design["f"] = "a";
        design["g"] = "t";
        design["h"] = "k";
        design["i"] = "b";
        design["j"] = "u";
        design["k"] = "l";
        design["l"] = "c";
        design["m"] = "v";
        design["n"] = "m";
        design["o"] = "d";
        design["p"] = "w";
        design["q"] = "n";
        design["r"] = "e";
        design["s"] = "x";
        design["t"] = "o";
        design["u"] = "f";
        design["v"] = "y";
        design["w"] = "p";
        design["x"] = "g";
        design["y"] = "z";
        design["z"] = "q";
        design["-"] = "h";
    }

    // view key
    function _T(string memory key) internal view returns (string memory) {
        return design[key];
    }
    
    // Generate code
    function concat(string memory _first, string memory _second) internal pure returns (string memory) {
		return string(abi.encodePacked(_first, _second));
	}

    function _generate(string[] memory c) internal view returns (string memory cipher) {
        uint j = c.length;
        string memory res;
        string memory tmp;
        for(uint i = 0; i < j; i++){
            tmp = _T(c[i]);
            res = concat(res, tmp);
            tmp = "";
        }
        string memory fin = res;
        res = "";
        cipher = fin;
    }

    // change pattern
    function _pattern_1() internal { // default after deploy
        _design1();
    }
    function _pattern_2() internal {
        _design2();
    }

}

contract TestWord is Cipher {
    function unMerge(string memory _text) public pure returns (string memory) {
		bytes memory source = bytes(_text);
        uint range = bytes(_text).length;
        string memory tmp;
        bytes memory char = bytes(tmp);
        for(uint i = 0; i < range; ++i) {
            char[i] = source[i];
        }
		return string(char);
	}

    function generate(string[] memory c) public view returns (string memory cipher) {
        return _generate(c);
    }

    // view key
    function table(string memory key) public view returns (string memory) {
        return _T(key);
    }

    // change pattern
    function pattern_1() public {
        _pattern_1();
    }
    function pattern_2() public {
        _pattern_2();
    }
}

