// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MessageContextExample {
    address public sender;
    uint256 public value;
    uint256 public gas;
    uint256 public gasPrice;
    uint256 public blockNumber;
    uint256 public timestamp;

    constructor() payable {
        sender = msg.sender;
        value = msg.value;
        gas = gasleft();
        gasPrice = tx.gasprice;
        blockNumber = block.number;
        timestamp = block.timestamp;
    }

    function getMessageContext()
        public
        view
        returns (
            address,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        return (sender, value, gas, gasPrice, blockNumber, timestamp);
    }
}

