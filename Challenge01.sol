// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract challenge01 {
    uint256 public myUint;
    int256 public myInt;
    string public myString;
    bool public myBool;

    function setMyUint(uint256 _myUint) public returns (uint256) {
        myUint = _myUint;
        return myUint;
    }

    function getMyUint() public view returns (uint256) {
        return myUint;
    }

    function setMyInt(int256 _myInt) public returns (int256) {
        myInt = _myInt;
        return myInt;
    }

    function getMyInt() public view returns (int256) {
        return myInt;
    }

    function setMyString(string memory _myString) public returns (string memory) {
        myString = _myString;
        return myString;
    }

    function getMyString() public view returns (string memory) {
        return myString;
    }

    function setMyBool(bool _myBool) public returns (bool) {
        myBool = _myBool;
        return myBool;
    }

    function getMyBool() public view returns (bool) {
        return myBool;
    }
}

