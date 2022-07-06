//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./branch.sol";

contract Main {
    mapping (string => address) branches;
    uint8 index;

    Branch branch;

    constructor() {
        index = 0;
    }

    function getBranchAddress(string memory _name) public view returns(address) {
        require(branches[_name] != address(0));
        return branches[_name];
    }

    function getBranchCnt() public view returns(uint8) {
        return index;
    }

    function addNewBranch(string memory _name) public {
        branch = new Branch(index);
        branches[_name] = address(branch);
        index++;
    }

    function removeBranch(string memory _name) public returns(bool) {
        require(branches[_name] != address(0));
        delete branches[_name];
        return true;
    }
}
