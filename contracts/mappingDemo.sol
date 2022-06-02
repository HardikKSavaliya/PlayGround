// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract mappingDemo {
    mapping(uint8 => string) public student;

    function input(uint8 _rollNo, string memory _name) public {
        student[_rollNo] = _name;
    }
}
