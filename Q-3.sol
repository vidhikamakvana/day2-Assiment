pragma solidity ^0.8.0;

contract StructsAndMappingsExample {
    
    struct Person {
        uint age;
        string name;
    }
    
    mapping(address => Person) public people;
    
    function addPerson(uint _age, string memory _name) public {
        address sender = msg.sender;
        Person memory newPerson = Person(_age, _name);
        people[sender] = newPerson;
    }
    
    function getPerson() public view returns (uint, string memory) {
        address sender = msg.sender;
        return (people[sender].age, people[sender].name);
    }
    
}
