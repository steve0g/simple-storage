// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract PracticeFunctions {
    function uneFonctionPublic() public {

    }

    function uneFonctionPrivate() private {

    }

    function uneFonctionInternal() internal {

    }

    function uneFonctionExternal() external {

    }

    function testAppel() public {
        uneFonctionPublic();
        uneFonctionPrivate();
        uneFonctionInternal();
        // uneFonctionExternal(); // erreur: external ne peut pas être appelé directement depuis l'intérieur du contrat, seulement via une transaction externe ou this.uneFonctionExternal()
    }
}

contract PracticeFunctionsChild is PracticeFunctions {
    function testHeritage() public {
        uneFonctionInternal();
        // uneFonctionPrivate(); // erreur: private n'est jamais accessible, même par héritage — seul le contrat où elle est définie peut l'appeler
    }
}