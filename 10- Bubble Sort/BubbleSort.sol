// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract BubbleSort {

    function _sort(uint[] memory nums) internal pure {
        uint n = nums.length;
        for (uint i = 0; i < n; ++i) {
            for (uint j = 0; j < n-i-1; ++j) {
                // Comparing consecutive data and switching values if value at j > j+1.
                if (nums[j] > nums[j + 1]) {
                    nums[j] = nums[j] + nums[j + 1];
                    nums[j + 1] = nums[j] - nums[j + 1];
                    nums[j] = nums[j] - nums[j + 1];
                }
            }
            // Value at n-i-1 will be maximum of all the values below this index.
        }
    }

    function sort(uint[] memory nums) public pure returns (uint[] memory) {
        _sort(nums);
        for (uint i = 0; i < nums.length; i++) nums[i];
        return nums;
    }

}
