// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract CheckBlock {
    // var
    struct Node {
        uint id;
        bytes32 node;
    }
    mapping(uint => Node) private node; // now -> next
    uint private id;

    // init
    constructor() {
        id = 0;
        node[0] = Node(0, bytes32(keccak256(abi.encodePacked(uint(0), address(msg.sender)))));
    }

    // block generator
    function gen() public returns (uint) {
        id += 1;
        bytes32 b32 = _gen();
        node[id] = Node(id, b32);
        return id - 1;
    }

    function _gen() private view returns (bytes32) {
        return bytes32(keccak256(abi.encodePacked(
            id, address(msg.sender), node[id-1].node
        )));
    }

    // review block hash
    function review(uint _id) public view returns (bytes32) {
        return node[_id].node;
    }

    // check validator
    function check(uint _id, address who) public view returns (bool) {
        return node[_id].node == 
        bytes32(keccak256(abi.encodePacked(
            _id, address(who), node[_id-1].node
        )));
    }
}
