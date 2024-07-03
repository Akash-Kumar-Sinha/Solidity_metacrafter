// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName = "akash";
    string public tokenAbbr = "aks";
    uint public totalSupply = 0;

    mapping(address=>uint) public balance;

    function mint(address senderAddress, uint supplyValue) public{
        totalSupply += supplyValue;
        balance[senderAddress] += supplyValue;
    }
    
    function burn(address senderAddress, uint supplyValue) public{
        if(balance[senderAddress] >= supplyValue){
            totalSupply -= supplyValue;
            balance[senderAddress] -= supplyValue;
        }
    }

}
