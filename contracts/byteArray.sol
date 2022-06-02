// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract byteArray {
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;
    bytes public b;

    function setterFixedByte() public {
        b1 = "E";
        b2 = "ET";
        b3 = "ETH";
    }

    function pushDynamicByte() public {
        b.push("E");
    }

    function getDynamicByte(uint8 position) public view returns (bytes1) {
        return b[position];
    }

    function getLength() public view returns (uint256) {
        return b.length;
    }
}
