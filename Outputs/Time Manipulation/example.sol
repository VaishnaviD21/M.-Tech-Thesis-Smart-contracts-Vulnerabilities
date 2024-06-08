contract TimeManipulation {
    uint public releaseTime;
    uint public amount;

    constructor(uint _releaseTime, uint _amount) public {
        releaseTime = _releaseTime;
        amount = _amount;
    }

    function withdraw() public {
        require(now >= releaseTime, "Funds cannot be withdrawn yet");
        msg.sender.transfer(amount);
    }
}