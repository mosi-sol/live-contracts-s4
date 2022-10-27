// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract LinearSearch {

    function _linearSearch(uint[] calldata data, uint request) private pure returns (bool index,uint find) {
        uint n = data.length;
        uint found = 0;
        uint tmp;
        for(uint i = 0; i < n; i++) {
            if(request == data[i]){
                found = 1;
                tmp = i + 1;
                break;
            }
        }
        if(found == 1) {
            find = tmp;
            index = true;
        }
        else {
            index = false;
            find = 0;
        }
    }

    function linearSearch(uint[] calldata data, uint request) public pure returns (uint result) {
        (bool s, uint r) = _linearSearch(data, request);
        // require(s, "not founded");
        if(s) result = r;
    }
}
