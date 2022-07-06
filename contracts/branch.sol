//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Branch{
    uint public para;

    constructor(uint a) {
        para = a;
    }

    function setPara(uint _para) public returns(bool){
        para = _para;
        return true;
    }

    function getPara() public view returns(uint) {
        return para;
    }
}