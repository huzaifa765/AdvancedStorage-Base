// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdvancedStorage {

    uint256 public value;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _value) public {
        value = _value;
    }

    function increment() public {
        value += 1;
    }

    function decrement() public {
        value -= 1;
    }

    function reset() public {
        require(msg.sender == owner, "Not owner");
        value = 0;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}
