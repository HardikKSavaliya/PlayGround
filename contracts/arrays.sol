// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract arrays {
    uint8[4] public fixedSizeArray;

    function insert(uint8 position, uint8 value) public {
        fixedSizeArray[position] = value;
    }

    function length() public view returns (uint256) {
        return fixedSizeArray.length;
    }
}
