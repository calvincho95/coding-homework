// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9.0;

contract Q51 {

//1. 숫자들이 들어가는 배열을 선언하고 그 중에서 3번째로 큰 수를 반환하세요.

    uint[] numbers;

    function setNumbers(uint _a) public {
        numbers.(push(_a));

         function getThirdLargest() public view returns (uint) {
        require (numbers.length >= 3, "nope");

    }
 }

   





contract Q52 {

/*1. 자동으로 아이디를 만들어주는 함수를 구현하세요. 이름, 생일, 지갑주소를 기반으로 만든 해시값의 첫 10바이트를 추출하여 아이디로 만드시오.*/


    struct ID {
        string name;
        uint birthday;
        address addr;
    }

    mapping (string => ID) User;

    function addID(string memory _name, uint _birthday, address _addr) public {
        User.push(ID(_name, _birthday,_addr));
    }


}


contract Q53 {
/*1. 시중에는 A,B,C,D,E 5개의 은행이 있습니다. 각 은행에 고객들은 마음대로 입금하고 인출할 수 있습니다. 각 은행에 예치된 금액 확인, 입금과 인출할 수 있는 기능을 구현하세요.
    
    힌트 : 이중 mapping을 꼭 이용하세요.
    


- 답안
- upgrade
*/

    enum Bank { A, B, C, D, E}

maaping(Bank  =>maaping(address => uint )) Balance;

    function deposit(Bank _bank, uint _money) public {
        Bank[_bank][msg.sender] += _money;
    }

    function withdraw(Bank _bank, uint _money) public {
        Bank[_bank][msg.sender] -= _money;
    }
    }

    function checkBalance(Bank _bank) public view returns (uint) {
        return Bank[_bank][msg.sender];
    }

}


contract Q54 {
/*1. 기부받는 플랫폼을 만드세요. 가장 많이 기부하는 사람을 나타내는 변수와 그 변수를 지속적으로 바꿔주는 함수를 만드세요.
    
    힌트 : 굳이 mapping을 만들 필요는 없습니다. */
    
    address topDonor;
    uint topDonation;

    uint totalDonation;

    function donation() public {
        require(msg.value >= 0, "donattion must be greater than $0");

        totalDonation += msg.value;

        if(msg.value >= topDonation) {
            topDoner = msg.sender;
            topDonation = msg.value;
        }


    functiong getTopDoner() public view returns (address, uint) {
        return (topDonor, topDonation)
    }

    function getTotalDonation() public view returns (uint) {
        return totalDonation;
    }
    }

}

contract Q55 {
/*1. 배포와 함께 owner를 설정하고 owner를 다른 주소로 바꾸는 것은 오직 owner 스스로만 할 수 있게 하십시오.
- 답안*/

    address ownder;

    construct {
        owner = msg.sender;
    }

    modifier onlyOwnder() {
        require(msg.sender == ownder, "not the owner of this contract")
        _;
    }

    function changeOwner(address newOwner) public {
        require(newOnwer !== address(0), "nope");
        ownwer = newOnwer;

    }

}

contract Q56 {
/*1. 위 문제의 확장버전입니다. owner와 sub_owner를 설정하고 owner를 바꾸기 위해서는 둘의 동의가 모두 필요하게 구현하세요.
- 답안*/


    address owner;
    address subOwner;


    constructor {
        owner = msg.sender;
        subOwner == _subOwner;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "only Onwer can access")
        _;
    }

    modifier subOwner {
        require (subOwner == msg.sender, "only Sub-Owner can access")
        _;
    }

    function changeOwner(address _newOwner) public {
        require (_newOnwer !== 0, "nope"  );
        owner = _newOwner;
    }

    function changeSubOwner(address _newSubOwner) public {
        require (_newSubOnwer !== 0, "nope"  );
        owner = _newSubOwner;
    }

}

contract Q57 {
/*1. 위 문제의 또다른 버전입니다. owner가 변경할 때는 바로 변경가능하게 sub-owner가 변경하려고 한다면 owner의 동의가 필요하게 구현하세요.
- 답안 */

}

contract Q58 {
/*1. A contract에 a,b,c라는 상태변수가 있습니다. a는 A 외부에서는 변화할 수 없게 하고 싶습니다. b는 상속받은 contract들만 변경시킬 수 있습니다. c는 제한이 없습니다. 각 변수들의 visibility를 설정하세요.
- 답안 */

}


contract Q59 {
/*1. 현재시간을 받고 2일 후의 시간을 설정하는 함수를 같이 구현하세요.
- 답안 */

}

contract Q60 {
/*1. 방이 2개 밖에 없는 펜션을 여러분이 운영합니다. 각 방마다 한번에 3명 이상 투숙객이 있을 수는 없습니다. 특정 날짜에 특정 방에 누가 투숙했는지 알려주는 자료구조와 그 자료구조로부터 값을 얻어오는 함수를 구현하세요.
    
    예약시스템은 운영하지 않아도 됩니다. 과거의 일만 기록한다고 생각하세요.
    
    힌트 : 날짜는 그냥 숫자로 기입하세요. 예) 2023년 5월 27일 → 230527 */

}