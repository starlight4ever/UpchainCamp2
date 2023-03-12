require("@nomicfoundation/hardhat-toolbox");
require('hardhat-abi-exporter');

let dotenv = require('dotenv')
dotenv.config({ path: "./.env" })

const mnemonic = process.env.MNEMONIC
const scankey = process.env.ETHERSCAN_API_KEY
const privateKey = process.env.PRIVATEKEY


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",

  // 部署的网络
  networks: {
    
    hardhat: {
      chainId: 31337,
      gas: 12000000,
      accounts: {
        mnemonic: mnemonic,
      },
    },

    localdev: {
      url: "http://localhost:8545",
      chainId: 31337,
      gas: 12000000,
      accounts: {
        mnemonic: mnemonic,
      },
    },

    //avax测试网
    fuji:{
      url: "https://api.avax-test.network/ext/C/rpc",
      accounts:{
        mnemonic: mnemonic, //助记词部署
      },
      // accounts: [privateKey], //私钥部署
      chainId: 43113,
      live: true,
      saveDeployments: true,
      tags: ["staging"],
      gas: 5000000,
      timeout: 10000000
    },

    mumbai: {
      url: "https://endpoints.omniatech.io/v1/matic/mumbai/public",
      accounts: {
        mnemonic: mnemonic,
      },
      chainId: 80001,
    },

  },

  // 合约验证
  etherscan: {
    apiKey: scankey
  },

  // abi导出
  abiExporter: {
    path: './deployments/abi',
    clear: true,
    flat: true,
    only: [],
    spacing: 2,
    pretty: true,
  },

};
