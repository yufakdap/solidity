// SPDX-License-Identifier: UNLICENSED \
pragma solidity^0.8.0;

contract Enum{
    enum STATUS{
        none,
        pending,
        shipped,
        completed,
        rejected,
        canceled
    }
    STATUS public status;

    struct order{
        address buyer;
        STATUS status;
    }
    order[] public orders;

    function get() external view returns(STATUS){//returning a enum
        return status;
    }
    function set(STATUS _status)external {//enum as input
        status=_status;//

    }
    function ship()external{
        status=STATUS.shipped;
    }
    function reset()external{
        delete status;
    }

}
