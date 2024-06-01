// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract simpleOperation {
    uint public count;

    function incrementer() public {
        for (uint256 i=0; i < 1000 ; i++){
            count=count+1;
        }
    }
}

contract ComplexOperation {
    uint256 public result;

    function factorial(uint256 num) internal pure returns (uint256) {
        if (num == 0) {
            return 1;
        } else {
            uint256 fact = 1;
            for (uint256 i = num; i > 1; i--) {
                fact = fact* i;
            }
            return fact;
        }
    }

    function calculateFactorials() public {
        for (uint256 i = 1; i <= 100; i++) {
            result = result + factorial(i);
        }
    }
}
