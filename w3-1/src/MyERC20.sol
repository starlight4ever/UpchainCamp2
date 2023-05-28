//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


contract MyERC20 is ERC20 {

    constructor() ERC20(unicode"王星光的ERC20", "WXG") {
        _mint(msg.sender, 10000);
    }


}
