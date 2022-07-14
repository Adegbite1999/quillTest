// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "../src/MockAccessControl.sol";
import "../src/Attack.sol";
import "forge-std/Test.sol";

contract ContractTest is Test {
    Minion minion;
    Attack attack;
    function setUp() public {
        // setUpContract();
        minion = new Minion();
        address m = address(minion);
         attack = new Attack{value:1 ether}(m);
    }

    function testAttack() public returns (bool){
        //  address m = address(minion);
        //  attack = new Attack(m);
       assert(minion.verify(address(attack)) == true);
    }
}
