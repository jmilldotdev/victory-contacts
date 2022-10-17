// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "@jbx-protocol/juice-contracts-v3/contracts/abstract/JBOperatable.sol";
import "@jbx-protocol/juice-contracts-v3/contracts/interfaces/IJBController.sol";

contract Victory is JBOperatable {
    IJBController public immutable controller;

    constructor(IJBController _controller, IJBOperatorStore _operatorStore)
        JBOperatable(_operatorStore)
    {
        controller = _controller;
    }
}
