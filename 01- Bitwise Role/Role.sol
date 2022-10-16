// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract BitwiseRole {

    // roles
    uint private immutable ADMIN_ROLE;      // = tmp << 1;
    uint private immutable VICE_ROLE;       // = tmp << 2;
    uint private immutable MODERATOR_ROLE;  // = tmp << 3;
    uint private immutable ASSISTANCE_ROLE; // = tmp << 4;
    uint private immutable USER_ROLE;       // = tmp;
    // temporary role maker
    uint private tmp = 1;
    // role db
    mapping(address => uint) private role;

    // check role access
    modifier isRole(uint value) {
        _isRole(value);
        _;
    }
    // for using less gas in modifier
    function _isRole(uint value) internal view {
        require(role[msg.sender] == value, "not access");
    }

    // init
    constructor() {
        ADMIN_ROLE = shiftLeft(tmp, 1);         // value = 2
        VICE_ROLE = shiftLeft(tmp, 2);          // value = 4
        MODERATOR_ROLE = shiftLeft(tmp, 3);     // value = 8
        ASSISTANCE_ROLE = shiftLeft(tmp, 4);    // value = 16
        USER_ROLE = tmp;                        // value = 1
        _setRole(msg.sender, 2);                // set owner as admin role
    }
    
    // setting
    function _setRole(address _role, uint theRole) internal {
        role[_role] = theRole;
    }
    
    function setRole(address _role, uint theRole) external isRole(ADMIN_ROLE) {
        require(_validator(theRole));
        _setRole(_role, theRole);
    }
    

    function checkRole(address _role) external view returns (uint) {
        return role[_role];
    }

    // setter
    function shiftLeft(uint x, uint bits) internal pure returns (uint y) {
        y = x << bits;
    }

    // role validator
    function _validator(uint value) internal pure returns (bool) {
        require(
            value == 1 || 
            value == 2 || 
            value == 4 || 
            value == 8 || 
            value == 16,
            "not approved role" 
        );
        return true;
    }

    // assitance function for using in projects
    // this function is like 'modifier isRole' but for test pass
    function requireRole(address user, uint value) private view returns (bool) {
        require(role[user] == value, "not access");
        return true;
    }
    
    // for dev, delete this func for app
    function review() external view returns (uint,uint,uint,uint,uint,uint) {
        return (ADMIN_ROLE, VICE_ROLE, MODERATOR_ROLE, ASSISTANCE_ROLE, USER_ROLE, tmp);
    }

}
