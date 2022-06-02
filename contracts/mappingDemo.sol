// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract mappingDemo {
    mapping(uint8 => string) public student;
    struct studentDetails {
        string name;
        uint8 age;
    }
    mapping(uint256 => studentDetails) public studentDetail;

    function input(uint8 _rollNo, string memory _name) public {
        student[_rollNo] = _name;
    }

    function inputStruct(
        uint8 _rollNo,
        string memory _name,
        uint8 _age
    ) public {
        studentDetail[_rollNo] = studentDetails(_name, _age);
    }
}
