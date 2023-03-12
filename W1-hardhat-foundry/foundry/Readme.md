## forge 

### build
```
forge build
```

### test 

```
forge test
```


### deploy

forge script

```
forge script script/xxx.sol --rpc-url local --broadcast
```


```
forge create  src/Counter.sol:Counter  --rpc-url local  --private-key 0xdbd6a7a8735a046b356eb7d8f0d15d7da01357a9135a6a9d4bb50a249ac5713b
```

## cast

```
cast call 0x0DCd1Bf9A1b36cE34237eEaFef220932846BCD82 "counter()" --rpc-url local

cast send 0x0DCd1Bf9A1b36cE34237eEaFef220932846BCD82 "setNumber(uint256)" 1 --rpc-url local --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```


## anvil

```
anvil

anvil --port <PORT>
anvil -m "test test test test test test test test test test test junk"

```


