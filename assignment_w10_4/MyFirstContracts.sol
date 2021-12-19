pragma solidity ^0.8.0;

contract EmptyContract {}

contract Name {

    string public massage;

    constructor (string memory message) {
        massage = message;
    }
}

contract Bank{
    mapping(address=>uint) public account_balances;

    function transfer(uint amount, address acctToTransferTo) external {

        account_balances[msg.sender] -= amount;
        account_balances[acctToTransferTo] += amount;
    }


    function withdraw(uint amount) external {

        account_balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    receive () external payable{
        account_balances[msg.sender] += msg.value;
    }

    

}
