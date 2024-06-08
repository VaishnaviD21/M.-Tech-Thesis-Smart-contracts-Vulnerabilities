Contract FindThisHash{
bytes32 constant public hash=0x0000000000b3f879cb30fe243b4dfee438691c04;

constructor() public payable{}
function solve(string solution) public{
require(hash==sha3(solution));
msg.sender.transfer(1000)ether;
}
}