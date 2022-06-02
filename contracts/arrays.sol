// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract arrays {
    uint8[4] public fixedSizeArray;
    uint8[] public dynamicSizeArray;

    function insertFixedSize(uint8 position, uint8 value) public {
        fixedSizeArray[position] = value;
    }

    function lengthFixedSize() public view returns (uint256) {
        return fixedSizeArray.length;
    }

    function insertDynamicSize(uint8 value) public {
        dynamicSizeArray.push(value);
    }

    function removeDynamicSize() public {
        dynamicSizeArray.pop();
    }

    function lengthDynamicSize() public view returns (uint256) {
        return dynamicSizeArray.length;
    }
}
