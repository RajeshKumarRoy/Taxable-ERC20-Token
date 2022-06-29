// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

import "./IERC20Metadata.sol";

interface iToken is IERC20Metadata
{
    event Taxation(bool isTaxable, uint256 timestamp);
    event TaxFreeReg(address indexed account, bool isTaxFree, uint256 timestamp);
    
    function decreaseAllowance(address spender, uint256 amount) external returns (bool);
    function increaseAllowance(address spender, uint256 amount) external returns (bool);

    function mint(address account, uint256 amount) external returns (bool);
    function burn(address account, uint256 amount) external returns (bool);

    function isTaxFreeAddr(address account) external view returns (bool);
    function regTaxFreeAddr(address account) external returns (bool);
    function deRegTaxFreeAddr(address account) external returns (bool);

    function isTaxable() external view returns (bool);
    function enableTaxation() external returns (bool);
    function disableTaxation() external returns (bool);

    function totalTaxCollected() external view returns (uint256);
}
