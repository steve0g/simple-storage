// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract PracticeMappings {
    // Exercice 1 — Mapping simple : stock par modèle
    mapping(string => uint256) public stockParModele;

    function ajouterStock(string memory _modele, uint256 _quantite) public {
        stockParModele[_modele] += _quantite;
    }

    // Exercice 2 — Lire une valeur du mapping
    function getStock(string memory _modele) public view returns(uint256) {
        return stockParModele[_modele];
    }

    // Exercice 3 — Le piège de la valeur par défaut
    function estEnRuputure(string memory _modele) public view returns(bool) {
        // Cette fonction renverra aussi true pour un modèle jamais ajouté au mapping,
        // car un mapping ne fait aucune différence entre "quantité = 0" et "clé jamais utilisée":
        // les deux situations renvoient la même valeur par défaut, 0. 
        if (stockParModele[_modele] == 0) {
            return true;
        } else {
            return false;
        }
    }
}