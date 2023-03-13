pragma solidity ^0.8.0;

contract SearchAndRemove {
    
    uint[] public myArray;
    
    function searchAndRemove(uint _value) public {
        for (uint i = 0; i < myArray.length; i++) {
            if (myArray[i] == _value) {
          
                for (uint j = i; j < myArray.length - 1; j++) {
                    myArray[j] = myArray[j+1];
                }
              
                myArray.pop();
              
                break;
            }
        }
    }
    
}
