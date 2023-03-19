const { expect } = require("chai");
const { ethers } = require("hardhat/internal/lib/hardhat-lib");

let counter, otherAccount;

describe("Counter", function () {
  async function init() {
    const [owner, otherAccount] = await ethers.getSigners();
    const Counter = await ethers.getContractFactory("Counter");
    counter = await Counter.deploy();
    await counter.deployed();
    console.log("counter:" + counter.address);
  }

  before(async function () {
    await init();
  });

  // 
  it("init equal 0", async function () {
    expect(await counter.counter()).to.equal(0);
  });

  it("add 1 equal 1", async function () {
    let tx = await counter.count();
    await tx.wait();
    expect(await counter.counter()).to.equal(1);
  });

  it("other call", async function () {
    const [owner, otherAccount] = await ethers.getSigners();

    let add = counter.connect(otherAccount).count();

    await expect(add).eventually.to.rejectedWith(
      Error,
      "this function is restricted to the owner"
    );
  });

});
