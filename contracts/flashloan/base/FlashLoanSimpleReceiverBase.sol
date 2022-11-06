// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.10;

import {IPoolAddressesProvider} from '../../interfaces/IPoolAddressesProvider.sol';
import {IPool} from '../../interfaces/IPool.sol';

/**
 * @title FlashLoanSimpleReceiverBase
 * @author Aave
 * @notice Base contract to develop a flashloan-receiver contract.
 */
contract FlashLoanSimpleReceiverBase {
  IPoolAddressesProvider public immutable override ADDRESSES_PROVIDER;
  IPool public immutable override POOL;

  constructor(IPoolAddressesProvider provider) {
    ADDRESSES_PROVIDER = provider;
    POOL = IPool(provider.getPool());
  }
}
