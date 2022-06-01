// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract datatype {
    string public str = "Solidity state variable";

    function printInt() public pure returns (uint256) {
        uint256 number = 7;
        return number;
    }

    function printString() public pure returns (string memory) {
        string memory name = "Eth";
        return name;
    }
}
