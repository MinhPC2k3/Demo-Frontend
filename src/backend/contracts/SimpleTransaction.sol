// pragma solidity 0.8.8;

// // pragma solidity ^0.8.0;
// // pragma solidity >=0.8.0 <0.9.0;

// contract SimpleStorage {
//   uint256 favoriteNumber=9;

//   struct People {
//     uint256 favoriteNumber;
//     string name;
//   }

//   // uint256[] public anArray;
//   People[] public people;

//   mapping(string => uint256) public nameToFavoriteNumber;
//   function store(uint256 _favoriteNumber) public {
//     favoriteNumber = _favoriteNumber;
//   }

//   function retrieve() public view returns (uint256) {
//     return favoriteNumber;
//   }

//   function addPerson(string memory _name, uint256 _favoriteNumber) public {
//     people.push(People(_favoriteNumber, _name));
//     nameToFavoriteNumber[_name] = _favoriteNumber;
//   }
// }
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleTransaction{
    function deposit() payable public {
        // TODO do something then
        require(msg.value>0);
    }
    // function ReturnAmountMoney (address _AccountAddress) public view returns (uint256){
    //   return LinkAddressToMoney[_AccountAddress];
    // }
    // function withdraw(address _ReceiveMoneyAccount) public {
    //     msg.sender.transfer(_ReceiveAccount.transfer());
    // }
    // function withdraw(address _AccountAddress) public {
    //   uint256 _AmountMoneySendBack = LinkAddressToMoney[_AccountAddress]*2;
    //   payable(msg.sender).transfer(_AmountMoneySendBack);
      
    // }
    function Retrieve(address _AccountAddress) public view returns (uint256){
      return _AccountAddress.balance;
    }
    function CheckAccount (address _ReceiveAccount) public view returns (uint256){
      return _ReceiveAccount.balance;
    }
}