// SPDX-License-Identifier: UNLICNESED

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount; //number variable that holds number of transactions

    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    ); // like a function

    struct TransferStruct {
        // like an object
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions; // arrays

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        // just like a js function
        transactionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        // just like a js function
        // return transactions;
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        // just like a js function
        // return transaction count;
        return transactionCount;
    }
}
