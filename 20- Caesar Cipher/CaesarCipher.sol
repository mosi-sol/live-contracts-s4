// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Cipher {
    // locate
    mapping(string => string) private design; 

    // init
    constructor() {
        _design();
    }

    // setup key/pair - cesar method
    function _design() private {
        design["a"] = "c";
        design["b"] = "d";
        design["c"] = "e";
        design["d"] = "f";
        design["e"] = "g";
        design["f"] = "h";
        design["g"] = "i";
        design["h"] = "j";
        design["i"] = "k";
        design["j"] = "l";
        design["k"] = "m";
        design["l"] = "n";
        design["m"] = "o";
        design["n"] = "p";
        design["o"] = "q";
        design["p"] = "r";
        design["q"] = "s";
        design["r"] = "t";
        design["s"] = "u";
        design["t"] = "v";
        design["u"] = "w";
        design["v"] = "x";
        design["w"] = "y";
        design["x"] = "z";
        design["y"] = "-";
        design["z"] = "a";
        design["-"] = "b";
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

}

contract TestWord is Cipher {

    function generate(string[] memory c) public view returns (string memory cipher) {
        return _generate(c);
    }

    // view key
    function table(string memory key) public view returns (string memory) {
        return _T(key);
    }
}
