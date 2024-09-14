// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";
import {console} from "forge-std/console.sol"; // Importing console for logging

contract DeployCounter is Script {
    function run() external {
        // Start broadcasting the deployment transactions to the network
        vm.startBroadcast();

        // Deploy the Counter contract with an interval of 120
        Counter counter = new Counter(120);

        // Stop broadcasting transactions
        vm.stopBroadcast();

        // Log the deployed contract address
        console.log("Counter deployed to:", address(counter));
    }
}
