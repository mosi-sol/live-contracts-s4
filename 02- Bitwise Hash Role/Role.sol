// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract BitwiseRole {

    // roles
    bytes32 private immutable ADMIN_ROLE;      // = tmp << 1; 
    bytes32 private immutable VICE_ROLE;       // = tmp << 2;
    bytes32 private immutable MODERATOR_ROLE;  // = tmp << 3;
    bytes32 private immutable ASSISTANCE_ROLE; // = tmp << 4;
    bytes32 private immutable USER_ROLE;       // = tmp;
    // temporary role maker
    uint private tmp = 1;
    // role db
    mapping(address => bytes32) private role;

    // check role access
    modifier isRole(bytes32 value) {
        _isRole(value);
        _;
    }
    // for using less gas in modifier
    function _isRole(bytes32 value) internal view {
        require(role[msg.sender] == value, "not access");
    }

    // init
    constructor() {
        ADMIN_ROLE = shiftLeft(tmp, 1);         // value = 2
        VICE_ROLE = shiftLeft(tmp, 2);          // value = 4
        MODERATOR_ROLE = shiftLeft(tmp, 3);     // value = 8
        ASSISTANCE_ROLE = shiftLeft(tmp, 4);    // value = 16
        USER_ROLE = shiftLeft(tmp, 0);          // value = 1
        _setRole(msg.sender, 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace);    // set owner as admin role
    }
    
    // setting
    function _setRole(address _role, bytes32 theRole) internal {
        role[_role] = theRole;
    }
    
    function setRole(address _role, bytes32 theRole) external isRole(ADMIN_ROLE) {
        require(_validator(theRole));
        _setRole(_role, theRole);
    }
    

    function checkRole(address _role) external view returns (bytes32) {
        return role[_role];
    }

    // setter
    function shiftLeft(uint x, uint bits) internal pure returns (bytes32 y) {
        uint nonce = x << bits;
        y = keccak256(abi.encodePacked(nonce));
    }

    // role validator
    function _validator(bytes32 value) internal view returns (bool) {
        require(
            value == ADMIN_ROLE || 
            value == VICE_ROLE || 
            value == MODERATOR_ROLE || 
            value == ASSISTANCE_ROLE || 
            value == USER_ROLE,
            "not approved role" 
        );
        return true;
    }

    // assitance function for using in projects
    // this function is like 'modifier isRole' but for test pass
    function requireRole(address user, bytes32 value) private view returns (bool) {
        require(role[user] == value, "not access");
        return true;
    }
    
    // for dev, delete this func for app
    function review() external view returns (bytes32,bytes32,bytes32,bytes32,bytes32,uint) {
        return (ADMIN_ROLE, VICE_ROLE, MODERATOR_ROLE, ASSISTANCE_ROLE, USER_ROLE, tmp);
    }

}
