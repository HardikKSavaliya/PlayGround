// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract condition {
    function conditionCheck(int256 number) public pure returns (string memory) {
        string memory result;
        if (number > 0) {
            result = "Number is greater than 0";
        } else if (number < 0) {
            result = "Number is less than 0";
        } else {
            result = "Number is 0";
        }
        return result;
    }
}
