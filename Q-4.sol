pragma solidity ^0.8.0;

contract EventsExample {
    
    event NewPersonAdded(address indexed _sender, uint _age, string _name);
    
    struct Person {
        uint age;
        string name;
    }
    
    mapping(address => Person) public people;
    
    function addPerson(uint _age, string memory _name) public {
        address sender = msg.sender;
        Person memory newPerson = Person(_age, _name);
        people[sender] = newPerson;
        emit NewPersonAdded(sender, _age, _name);
    }
    
}
