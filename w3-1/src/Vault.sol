//SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


contract Vault is ERC20 {

    constructor() ERC20(unicode"王星光的ERC20Vault", "WXG") {

        _mint(msg.sender, 10000);

    }

    //mint铸币
    function mint() public {
        _mint(msg.sender, 100);
    }

    //deposit存款 存在合约下
    function deposit(uint256 amount) public {
        approve(address(this), amount);
        transferFrom(address(this), msg.sender, amount);
    }  
    
    //withdrow取款
    function withdrow(uint256 amount) public returns (bool){
        _burn(msg.sender, amount);
        return true;
    }


}
