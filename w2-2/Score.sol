// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


//接口
interface IScore {
    //修改学生分数
    function setScore(address studentAddress, uint256 score) external;
}

contract Score is IScore{

    
    address owner;

    mapping(address => uint256) public scoreMap;

    constructor() {
        owner = msg.sender;
    }

    //获取score
    function getScore(address studentAddress) public view returns (uint256) {
        //如果有值则返回，没有则返回0(0值无法辨别)
        return scoreMap[studentAddress];
    }
    
    //修改/添加学生分数
    function setScore(address studentAddress, uint256 score) external isTeacher() override {
        require(score <= 100, "score must less than 100");
        scoreMap[studentAddress] = score;
    }

    modifier isTeacher() {
        require(owner == msg.sender, "only teacher can set score");
        _;
    }

    //获取老师地址
    function getTeacher() public view returns (address) {
        return owner;
    }

    //将合约拥有者换成老师合约地址
    function setTeacher(address t) public {
        if(owner == msg.sender){
            owner = t;
        }
    }
    
}



contract Teacher {
    

    address _contractAddr;

    constructor(address contractAddr) {
        _contractAddr = contractAddr;
    }

    //修改学生分数
    function setScore(address studentAddress, uint256 score) external {
        IScore(_contractAddr).setScore(studentAddress, score);
    }

}


