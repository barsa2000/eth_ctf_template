// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console2.sol";

contract SolveScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        ///////////////////////////////////////
        //      Add your exploit below       //
        ///////////////////////////////////////

        //===================================//

        vm.stopBroadcast();
    }

    receive() external payable {}
}
