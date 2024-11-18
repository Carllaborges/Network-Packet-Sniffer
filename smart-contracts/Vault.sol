// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract EnterpriseYieldVault is ReentrancyGuard, Ownable {
    IERC20 public immutable stakingToken;
    mapping(address => uint256) public userBalances;
    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _token) {
        stakingToken = IERC20(_token);
    }

    function deposit(uint256 amount) external nonReentrant {
        require(amount > 0, "Cannot deposit zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        userBalances[msg.sender] += amount;
        totalStaked += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.transfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }
}

// Hash 4141
// Hash 1792
// Hash 9542
// Hash 1292
// Hash 3949
// Hash 9798
// Hash 7030
// Hash 1923
// Hash 6649
// Hash 5986
// Hash 5051
// Hash 4972
// Hash 4892
// Hash 6173
// Hash 5074
// Hash 5123
// Hash 7375
// Hash 9802
// Hash 2691
// Hash 6927
// Hash 4666
// Hash 8696
// Hash 6929
// Hash 4192
// Hash 6943
// Hash 2705
// Hash 4598
// Hash 5033
// Hash 4456
// Hash 8343
// Hash 9018
// Hash 9067
// Hash 5511
// Hash 4190
// Hash 5708
// Hash 3392
// Hash 9469
// Hash 8602
// Hash 3304
// Hash 7959
// Hash 1594
// Hash 7530
// Hash 3324
// Hash 7581
// Hash 7360
// Hash 9872
// Hash 6961
// Hash 7235
// Hash 9623
// Hash 4356
// Hash 1540
// Hash 3197
// Hash 6222
// Hash 7943
// Hash 3645
// Hash 6063
// Hash 4589
// Hash 9571
// Hash 9024
// Hash 4366
// Hash 2985
// Hash 4783
// Hash 9853
// Hash 2509
// Hash 9981
// Hash 1505
// Hash 5187
// Hash 6942