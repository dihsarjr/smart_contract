//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{

    uint256 public favoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoiriteNumber) public{
        favoriteNumber = _favoiriteNumber;
    }

    function retrive() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoiriteNumber) public{
        people.push(People({favoriteNumber:_favoiriteNumber, name:_name}));
        nameToFavoriteNumber[_name] = _favoiriteNumber;
    }



}