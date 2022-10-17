// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./TestBaseWorkflow.sol";
import "../src/Victory.sol";

contract ContractTest is TestBaseWorkflow {
    function setUp() public override {
        super.setUp();

        Victory victory = new Victory(
            IJBController(_jbController),
            IJBOperatorStore(_jbOperatorStore)
        );
    }

    function testExample() external {
        assertTrue(true);
    }
}
