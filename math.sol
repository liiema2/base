
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract BasicMath {

    function adder(uint _a, uint _b) external pure returns (uint sum, bool error) {

        unchecked {

            sum = _a + _b;

            if (sum < _a) {

                return (0, true); // Overflow

            }

            return (sum, false);

        }

    }

    function subtractor(uint _a, uint _b) external pure returns (uint difference, bool error) {

        if (_b > _a) {

            return (0, true); // Underflow

        }

        difference = _a - _b;

        return (difference, false);

    }

}