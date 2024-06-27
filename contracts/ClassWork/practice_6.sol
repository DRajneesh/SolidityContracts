// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract GlobalVariables {

    function getCurrentBlockNumber() public view returns (uint) {

        return block.number;

    }

 

    function getMessageSender() public view returns (address) {

        return msg.sender;

    }

 

    function getTransactionOrigin() public view returns (address) {

        return tx.origin;

    }

 

    function getCurrentTimestamp() public view returns (uint) {

        return block.timestamp;

    }

}