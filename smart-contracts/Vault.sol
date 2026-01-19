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
// Hash 9664
// Hash 2438
// Hash 8053
// Hash 5830
// Hash 2746
// Hash 6656
// Hash 1432
// Hash 1976
// Hash 7886
// Hash 6967
// Hash 7082
// Hash 3830
// Hash 4953
// Hash 7179
// Hash 2568
// Hash 5502
// Hash 5727
// Hash 4060
// Hash 3132
// Hash 6869
// Hash 8287
// Hash 7622
// Hash 5935
// Hash 4721
// Hash 2861
// Hash 8597
// Hash 8909
// Hash 5308
// Hash 9578
// Hash 2792
// Hash 6062
// Hash 7450
// Hash 2410
// Hash 3265
// Hash 3626
// Hash 8945
// Hash 4534
// Hash 4672
// Hash 1105
// Hash 2296
// Hash 8550
// Hash 8871
// Hash 1280
// Hash 5828
// Hash 9951
// Hash 4691
// Hash 8447
// Hash 8975
// Hash 2910
// Hash 3758
// Hash 2777
// Hash 9203
// Hash 2870
// Hash 4393
// Hash 5214
// Hash 9618
// Hash 2911
// Hash 1066
// Hash 9622
// Hash 1696
// Hash 9635
// Hash 6127
// Hash 9730
// Hash 4612
// Hash 9209
// Hash 6298
// Hash 1303
// Hash 9118
// Hash 3997
// Hash 1023
// Hash 1874
// Hash 9583
// Hash 7632
// Hash 3104
// Hash 7972
// Hash 9553
// Hash 4451
// Hash 9227
// Hash 7788
// Hash 1854
// Hash 6066
// Hash 2402
// Hash 6349
// Hash 8351
// Hash 4882
// Hash 5738
// Hash 5598
// Hash 1113
// Hash 5505
// Hash 9747
// Hash 7198
// Hash 5622
// Hash 2228
// Hash 8760
// Hash 4203
// Hash 8909
// Hash 4727
// Hash 8484
// Hash 1734
// Hash 1338
// Hash 1455
// Hash 4256
// Hash 6011
// Hash 2739
// Hash 2421
// Hash 3310
// Hash 2071
// Hash 8021
// Hash 5505
// Hash 4260
// Hash 3453
// Hash 3229
// Hash 2731
// Hash 3881
// Hash 6658
// Hash 6681
// Hash 3995
// Hash 8430
// Hash 2426
// Hash 9508
// Hash 6683
// Hash 6266
// Hash 9068
// Hash 9525
// Hash 1645
// Hash 7392
// Hash 5581
// Hash 1574
// Hash 2514
// Hash 8174
// Hash 8404
// Hash 3497
// Hash 7051
// Hash 9604
// Hash 4803
// Hash 3427
// Hash 6718
// Hash 5863