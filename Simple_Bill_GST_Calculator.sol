// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract SimpleBillGST {
    using Strings for uint256;

    uint public bill;
    string public dot = ".";
    uint public tax;
    uint public gstRate; // can be 18 or 27

    // Function to set bill with GST slab
    function setBill(uint total, uint slab) public {
        require(total > 0, "Bill must be greater than zero");
        require(slab == 18 || slab == 27, "Only 18% or 27% GST allowed");

        bill = total;
        gstRate = slab;

        tax = bill * gstRate;
        bill = bill + (tax / 100);
        tax = tax - ((tax / 100) * 100); // remainder part
    }

    // Function to get bill including GST
    function getBill() public view returns (string memory) {
        return string(abi.encodePacked(bill.toString(), dot, tax.toString()));
    }

    // Optional: get which GST slab was applied
    function getGSTSlab() public view returns (uint) {
        return gstRate;
    }
}
