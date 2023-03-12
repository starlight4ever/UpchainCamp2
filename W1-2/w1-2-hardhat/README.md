# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
<!-- 
    #脚本
    npm install -g hardhat
    npx hardhat 初始化hardhat项目
    npm install dotenv  安装dotenv插件
    npm hardhat compile 编译合约
    npx hardhat test 测试合约
    npx hardhat run scripts/deploy.js  部署合约
    npx hardhat run scripts/deploy.js --network fuji 部署合约到外部网络
    npx hardhat verify 0xdbB268002D37632B43137c843f95b226B4676c2F --network fuji 在网络上验证合约(公开合约代码)
 -->
<!-- 
    导出abi的插件
    npm install --save-dev hardhat-abi-exporter
    npx hardhat export-abi  生成abi文件
 -->


 
 <!-- 
    avax测试网 fuji https://testnet.snowtrace.io/tx/
    合约地址 0xdbB268002D37632B43137c843f95b226B4676c2F  

    作业：部署合约到测试网，验证合约代码
    https://testnet.snowtrace.io/address/0xdbB268002D37632B43137c843f95b226B4676c2F#code

  -->