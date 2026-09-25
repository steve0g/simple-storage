// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract PracticeErrorWarnings {
    // Exercice 1 — Provoquer un warning (variable inutilisée)
    function testWarning() public pure {
        // L'erreur dit que c'est une variable locale inutilisée
        // Warning: Unused local variable.
        //--> ErrorWarning.sol:9:9:
        // uint256 nombreInutile = 5;
        // pour corriger je return la variable
        // return 5;
    }

    // Exercice 2 — Provoquer une erreur de syntaxe
    function testErreurSyntaxe() public pure returns(uint256) {
        // Sans le point virgule (;), j'ai ParserError: Expected ';' but got '}' 
        // ParserError: Expected ';' but got '}' --> ErrorWarning.sol:16:5:
        // -> ce qui veut dire que je dois mettre le point virgule à la ligne 16
        return 10;
    }

    // Exercice 3 — Provoquer une erreur de type
    function testErreurType() public pure {
        // à l'origine : uint256 age = "vingt-cinq"; → TypeError: Type literal_string "vingt-cinq" is not implicitly convertible to expected type uint256.
        // correction : soit mettre un vrai nombre (uint256 age = 25;), soit changer le type en string
        // uint256 age = 25; // corrigé — à l'origine : uint256 age = "vingt-cinq"; → TypeError
    }

    // Exercice 4 — Warning sur un paramètre inutilisé
    // Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    // --> ErrorWarning.sol:35:37:
    // L'erreur indique le paramètre valeur passé à la fonction testParametreInutilise() n'a pas été utilisé
    // Donc pour corriger l'erreur faudrait supprimer le paramètre ou le mettre en commentaire pour enlever l'avertissement
    function testParametreInutilise(uint256) public pure returns(uint256) {
        return 10;
    }
}