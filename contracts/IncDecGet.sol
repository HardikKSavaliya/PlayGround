// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract IncDecGet {
    uint256 number;

    constructor() {
        number = 5;
    }

    function increment() public {
        number = number + 1;
    }

    function decrement() public {
        number = number + 1;
    }

    function get() public view returns (uint256) {
        return number;
    }
}
