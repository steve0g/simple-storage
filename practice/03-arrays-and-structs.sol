// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract PracticeArraysStructs {
    // exercice 1 : array + struc
    struct Laptop {
        string modele;
        uint256 prix;
        bool disponible;
    }

    Laptop[] public stock;

    // Exercice 2 — Ajouter un laptop
    function ajouterLaptop(string memory _modele, uint256 _prix) public {
        stock.push( Laptop(_modele, _prix, true) );
    }

    // Exercice 3 — Lire un champ précis
    function getPrix(uint256 _index) public view returns(uint256 _prix) {
        return stock[_index].prix;
    }

    // Exercice 4 — Modifier un champ précis (le vrai test du concept storage)
    function marquerVendu(uint256 _index) public {
        stock[_index].disponible = false;
    }

    // Exercice 5 — Compter le stock disponible (un peu plus complexe)
    function compterDisponibles() public view returns(uint256) {
        uint256 compteur = 0;
        for (uint256 i = 0; i < stock.length; i++) {
            if (stock[i].disponible == true) {
                compteur++;
            }
        }
        return compteur;
    }
}