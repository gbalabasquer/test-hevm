pragma solidity 0.6.7;

import "ds-test/test.sol";

interface Hevm {
    function warp(uint) external;
    function store(address,bytes32,bytes32) external;
}

interface DSProxyLike {
    function execute(address, bytes calldata) external;
}

interface PoolSynthetixLike {
    function stake(uint256) external;
    function withdraw(uint256) external;
    function exit() external;
    function getReward() external;
    function boost() external;
}

interface PoolLike {
    function deposit(uint256, uint256) external;
    function withdraw(uint256, uint256) external;
    function emergencyWithdraw(uint256) external;
}

interface TokenLike {
    function balanceOf(address) external returns (uint256);
    function approve(address, uint256) external;
}

interface SwapLike {
    function addLiquidity(address, address, uint256, uint256, uint256, uint256, address, uint256) external;
    function removeLiquidity(address, address, uint256, uint256, uint256, address, uint256) external;
}

contract DssSpellTest is DSTest {
    Hevm hevm;

    bytes20 constant CHEAT_CODE = bytes20(uint160(uint256(keccak256('hevm cheat code'))));

    DSProxyLike constant dsProxy = DSProxyLike();


    function setUp() public {
        hevm = Hevm(address(CHEAT_CODE));
    }

}
