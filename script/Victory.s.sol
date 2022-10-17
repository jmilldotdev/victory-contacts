// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "../src/Victory.sol";

contract Deploy is Script {
    IJBController jbController =
        IJBController(0x43780E780DF2bD1e4d955d3d4b577a490841241A);
    IJBOperatorStore jbOperatorStore =
        IJBOperatorStore(0x6F3C5afCa0c9eDf3926eF2dDF17c8ae6391afEfb);

    Victory victory;

    function run() external {
        vm.startBroadcast();

        victory = new Victory(jbController, jbOperatorStore);
    }
}
