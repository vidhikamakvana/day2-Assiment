pragma solidity ^0.8.0;

contract CustomModifiersExample {
    
    address public owner;
    uint public myNumber;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _; 
    }
    
    function setNumber(uint _num) public onlyOwner {
        myNumber = _num;
    }
    
    function getNumber() public view returns (uint) {
        return myNumber;
    }
    
}
