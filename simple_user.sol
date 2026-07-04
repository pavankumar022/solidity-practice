// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UserInfo {

    struct User {
        string name;
        uint8 age;
        string city;
        string phone;
    }

    mapping(address => User) public users;

    // Set your own details
    function setUser(string memory _name, uint8 _age, string memory _city, string memory _phone) public {
        users[msg.sender] = User(_name, _age, _city, _phone);
    }

    // Get details of any user by their address
    function getUser(address _user) public view returns (string memory, uint8, string memory, string memory) {
        User memory u = users[_user];
        return (u.name, u.age, u.city, u.phone);
    }
}
