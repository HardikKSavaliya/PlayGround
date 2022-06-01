// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract boolean {
    function check(int256 number) public pure returns (bool) {
        bool result = false;
        if (number > 0) {
            result = true;
        } else {
            result = false;
        }
        //default will be false
        return result;
    }
}
