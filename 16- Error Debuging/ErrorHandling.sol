// SPDX-License-Identifier: MIT
pragma solidity 0.8;

import "hardhat/console.sol";

contract TestError {
     enum Error {
        None,
        WithMessage,
        WithoutMessage,
        Critical
    }
    Error private _error;

    function changeErroe(Error error) public {
        _error = error;
    }

    function testError() public view {
         if (_error == Error.WithMessage) {
            revert("error is: Revert With Message (index=1)");
        } else if (_error == Error.WithoutMessage) {
            revert(); //  (index=2)
        }  else if (_error == Error.Critical) {
            revert("error is: Error.Critical (index=3)");
        } else if (_error == Error.None) {
            console.log("no error! (index=0)");
        } else {
            console.log("hello world!"); // not happend at all
        }
    }
}
