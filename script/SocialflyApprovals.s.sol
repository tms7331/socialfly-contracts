// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SocialflyApprovals} from "../src/SocialflyApprovals.sol";

contract SocialflyApprovalsScript is Script {
    SocialflyApprovals public approvals;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        approvals = new SocialflyApprovals();
        console.log("SocialflyApprovals deployed to:", address(approvals));

        vm.stopBroadcast();
    }
}
