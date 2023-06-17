// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface ICounter {
    function count() external view returns (uint);
    function increment() external;
}

contract CounterContract is ICounter {
    uint private counter;

    function count() external view override returns (uint) {
        return counter;
    }

    function increment() external override {
        counter++;
    }
}

contract MyContract {
    function getCount(address _addr) external view returns (uint) {
        return ICounter(_addr).count();
    }

    function incrementI(address _in) external {
        ICounter(_in).increment();
    }
}
