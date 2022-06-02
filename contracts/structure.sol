// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

struct student {
    uint8 rollNo;
    string name;
}

contract structure {
    student public stud;

    constructor(uint8 _rollNo, string memory _name) {
        stud.rollNo = _rollNo;
        stud.name = _name;
    }

    function change(uint8 _rollNo, string memory _name) public {
        student memory new_stud = student({rollNo: _rollNo, name: _name});
        stud = new_stud;
    }
}
