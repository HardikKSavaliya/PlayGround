// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract byteArray {
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;

    function setter() public {
        b1 = "E";
        b2 = "ET";
        b3 = "ETH";
    }
}
