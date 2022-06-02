// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract enumDemo {
    enum user {
        allow,
        ban,
        wait
    }
    user public u1 = user.ban;

    function allow() public {
        u1 = user.allow;
    }

    function ban() public {
        u1 = user.ban;
    }
}
