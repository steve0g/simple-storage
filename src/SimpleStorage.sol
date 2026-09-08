// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 favoriteNumber;

    // uint256[] listOfFavoriteNumbers;
    // on crée un type personnalisé avec le mot-clé struct
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array of Person structs
    Person[] public listOfPeople; // []

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    // on crée une fonction qui va permettre d'ajouter une personne à notre liste de personnes
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // on crée une nouvelle personne
        listOfPeople.push( Person(_favoriteNumber, _name) );
    }
}