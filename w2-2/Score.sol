// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Teacher.sol";


interface IScore {
    //修改学生分数
    function setScore(uint256 score) external;
}

contract Score is IScore{

    uint256 _score;
    
    address teacher;

    constructor(address teacherAddr) {
        teacher = teacherAddr;
    }

    //获取score
    function getScore() public view returns (uint256) {
        return _score;
    }
    
    //修改学生分数
    function setScore(uint256 score) external isTeacher() override {
        require(score <= 100, "score must less than 100");
        _score = score;
    }

    modifier isTeacher() {
        require(teacher == msg.sender, "only teacher can set score");
        _;
    }
    
}


