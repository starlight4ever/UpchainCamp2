// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Score.sol";
contract Teacher {
    
    
    //修改学生分数
    function setScore(uint256 score, address student) external {
        IScore(student).setScore(score);
    }

}



