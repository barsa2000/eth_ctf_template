// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console2.sol";

contract SolveTest is Test {
    address player = makeAddr("player");
    address deployer = makeAddr("deployer");

    function setUp() public {
        vm.startPrank(deployer);

        ///////////////////////////////////////
        //       Add your setup below        //
        ///////////////////////////////////////

        //===================================//

        vm.stopPrank();
    }

    function testSolve() public {
        vm.startPrank(player);

        ///////////////////////////////////////
        //      Add your exploit below       //
        ///////////////////////////////////////

        //===================================//

        vm.stopPrank();

        ///////////////////////////////////////
        // Add your success conditions below //
        ///////////////////////////////////////

        //===================================//
    }
}
