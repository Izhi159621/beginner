//SPDX-License-Identifier: MIT

pragma  solidity ^0.8.2;

contract Property{
    uint private price;
    address public owner;

    constructor(){
        price = 10;
        owner = msg.sender;
    }

    //function modifier
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    function changeOwner(address _owner) public onlyOwner{
        owner = _owner;
    }
    
    function setPrice(uint _price) public {
        price = _price;
    }

    function getPrice() view public returns(uint){
        return price;
    } 
}

