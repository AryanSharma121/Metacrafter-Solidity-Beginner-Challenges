// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract calculator{
    uint public num1;
    uint public num2;

    function set(uint _num1, uint _num2 ) public{
        num1=_num1;
        num2=_num2;
    }

    function add()  public view returns(uint){
        return num1+num2;
    }
    function subtract()  public view returns(uint){
        return num1-num2;
    }
    function multiply()  public view returns(uint){
        return num1*num2;
    }
    function divide()  public view returns(uint){
        return num1/num2;
    }

}