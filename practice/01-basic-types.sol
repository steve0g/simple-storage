// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract PracticeBasicTypes {
    // declaration of a variable
    uint8 public compter = 250;

    // a normal address
    address public client;

    // an address that can receive ETH
    address payable public receiver;

    // bytes32: text data or a short identifier that will never change size.
    bytes32 public idProduct;

    // int256: can be negative
    int256 public variationStock;
}