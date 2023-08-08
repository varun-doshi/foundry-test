// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "../lib/forge-std/src/Test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";


contract StakeContractTest is Test{
    StakeContract public stakecontract;
    MockERC20 public mockerc20;
    function setUp() public{
        stakecontract=new StakeContract();
        mockerc20 =new MockERC20();

    }

    function testExample() public{
        uint256 amount=10e18;
        mockerc20.approve(address(stakecontract), amount);
        bool stakePassed=stakecontract.stake(amount,address(mockerc20));
        assertTrue(stakePassed);
    }

}