// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract PracticeArraysStructs {
    // Exercice 1 : array + struct
    // création du type Laptop avec struct
    struct Laptop {
        string modele;
        uint256 prix;
        bool disponible;
    }

    // on crée ici un tableau dynamique Laptop pour stocker un nombre indéfini de laptop
    Laptop[] public stock;

    // Exercice 2 — Ajouter un laptop
    // crée un nouveau Laptop avec disponible = true par défaut, et l'ajoute à la fin du tableau stock
    function ajouterLaptop(string memory _modele, uint256 _prix) public {
        stock.push( Laptop(_modele, _prix, true) );
    }

    // Exercice 3 — Lire un champ précis
    // renvoie uniquement le prix du laptop à la position _index, sans modifier le storage (view)
    function getPrix(uint256 _index) public view returns(uint256 _prix) {
        return stock[_index].prix;
    }

    // Exercice 4 — Modifier un champ précis de façon permanente (concept du storage)
    function marquerVendu(uint256 _index) public {
        stock[_index].disponible = false; // ici le fait de marquer comme vendu ou indisponible l'élement à l'index indiqué modifie la variable d'état donc va coûter du gas
    }

    // Exercice 5 — Compter le stock disponible (un peu plus complexe)
    function compterDisponibles() public view returns(uint256) {
        uint256 compteur = 0; // initialisation du compteur à zero
        for (uint256 i = 0; i < stock.length; i++) { // les conditions qui doivent être remplie
            if (stock[i].disponible == true) {
                compteur++;
            }
        }
        return compteur; // retourne la valeur que compteur a accumulée grâce aux incrémentations compteur++ qui ont eu lieu à l'intérieur de la boucle
    }
}