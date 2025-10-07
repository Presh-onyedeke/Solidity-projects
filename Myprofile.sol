// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

// import "hardhat/console.sol";

// contract ImportConsole{
//     string name;
//     uint age;
//     uint mobile;
//     string email;
//     string location;

//     constructor(
//         string memory name,
//         uint age,
//         uint mobile,
//         string memory email,
//         string memory location)
    //{
//         console.log();
//     }
// }
contract PersonalProfile {
    // Define a struct to hold personal information
    struct person {
        string name;
        uint age;
        uint mobile;
        string email;
        string location;
    }

    // A variable to store your personal info
    person public myInfo;

    // Function to set your personal info
    function addInfo(
        string memory name,
        uint age,
        uint mobile,
        string memory email,
        string memory location

    ) public {
        myInfo = person(name, age, mobile, email, location);
    }

    // Function to retrieve stored info (optional, since myInfo is already public)
    function getInfo() public view returns (string memory, uint, uint, string memory, string memory) {
        return (myInfo.name, myInfo.age, myInfo.mobile, myInfo.email, myInfo.location);
    }
}
