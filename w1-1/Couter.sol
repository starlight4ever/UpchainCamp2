pragma solidity ^0.8.7;



contract Counter {

    uint256 _num = 100;

    function add(uint256 b) external returns(uint256 res){
        _num = _num + b;
        return _num;

    }
    
}