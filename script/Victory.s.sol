// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "../src/Victory.sol";

contract Deploy is Script {
    Victory victory;

    function run() external {
        vm.startBroadcast();

        victory = new Victory();
    }
}
