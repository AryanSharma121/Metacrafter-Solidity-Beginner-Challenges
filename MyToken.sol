// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract MyToken {
// public variable that hold token details
    string public name;
    string public symbol;
    uint256 public totalSupply;

// mapping variable to associate the etherium address and the balance of token on that address.  
    mapping(address => uint256) public balances;

// to initialize the token details
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply; // Initial deployer owns all the token
    }

    // on which address to mint how many tokens 
    function mint(address _to, uint256 _amount) public {
        totalSupply = totalSupply + _amount;
        balances[_to] =balances[_to] + _amount;
    }

    // how many token to burn on which address
    function burn(address _from, uint256 _amount) public {
        require(balances[_from] >= _amount, "Burn amount exceeds balance");
        totalSupply = totalSupply -  _amount;
        balances[_from] = balances[_from] - _amount;
    }
}
