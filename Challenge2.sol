// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract converter{
    uint myEther;
    function setEther(uint _myEther) public { 
        myEther = _myEther;
    }
    
    function getEther() public view returns(uint){
return myEther;
    }

    function eth_to_wei() public view returns(uint){
return (myEther*(10**18));
    }
    function eth_to_gwei() public view returns(uint){
return (myEther*(10**9));
    }
}
