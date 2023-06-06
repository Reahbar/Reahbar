// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Storage 
{

    address owner;
    string model;
    uint price;

    function set (address _owner, string memory _model, uint _price) public 
    {
    owner = _owner;
    model = _model;
    price = _price;   
    }
    
    function get () public view returns (address, string memory, uint) 
    {
        return (owner, model, price);
    } 

}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

pragma solidity >0.8.0 <0.9.0;

contract Storage2 {

    struct Car
    {
        address owner;
        string  model;
        uint price;
    }

    Car [] public cars;

    function set (address owner, string memory model, uint price) external 
    {   Car memory newcars = Car (owner, model, price);
        cars.push (newcars);
    }

    function get (uint index) external view returns (address, string memory, uint) 
    {
        Car memory _newcars = cars[index];
        return (_newcars.owner, _newcars.model, _newcars.price);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

pragma solidity ^0.8.0;

contract Storage3 
{
    struct Car 
    {
        address owner;
        string model;
        uint price;
    }

    Car [] public cars;
    mapping (address => Car ) public carData;

    function set (address owner, string memory model, uint price) external {
        Car memory _car = Car (owner, model, price);
        cars.push (_car);
        carData [msg.sender] = _car;
    }

    function get (uint index) external view returns (address, string memory, uint) {
        Car memory _cars = cars[index];
        return (_cars.owner, _cars.model, _cars.price);
    }

    function getByAddress(uint index) public view returns (Car memory) {
    Car memory _carData = cars[index];
    _carData = carData [msg.sender];
    return _carData;
}


 
}

