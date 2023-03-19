// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Bank {
    mapping(address => uint256) public balances;
    address[] public accounts;

    //payable构造函数，表示可以接收以太币
    constructor() payable {
    }

    //接收以太币,记录转账人的地址和数量
    receive() external payable {
        //如果转账人的地址不在数组中，就将其添加到数组中
        if (balances[msg.sender] == 0) {
            accounts.push(msg.sender);
        }
        //记录转账人的地址和数量
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        //call()函数将合约中的钱转移到调用者的账户中
        (bool success,) = payable(msg.sender).call{value: address(this).balance}("");
        //如果失败，revert()函数将会终止合约的执行
        if (!success) {
            revert();
        }
    }

    //获取合约中的以太币数量
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //获取数组中所有的地址和以太币数量
    function getAccounts() public view returns (address[] memory, uint256[] memory) {
        uint256[] memory _balances = new uint256[](accounts.length);
        for (uint256 i = 0; i < accounts.length; i++) {
            _balances[i] = balances[accounts[i]];
        }
        return (accounts, _balances);
    }

    
}
