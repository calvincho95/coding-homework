// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9.0;

contract Q81 {



// 1. Contract에 예치, 인출할 수 있는 기능을 구현하세요. 지갑 주소를 입력했을 때 현재 예치액을 반환받는 기능도 구현하세요.  
// - 답안

mapping(address => uint) balance;
    
    function deposit(uint _a) public {
        require(msg.value>0, "nope")
        blanace[]msg.sender] += msg.value]
    }

    function withdraw(uint _b) public {
        require(msg.value <= balance, "nope")
        balance[msg.sender] -= msg.value;
        payable(msg.sender).transfer(_b);
    }

    function viewBalance(address _addr) public view returns (uint) {
        return blanace[addr];
    }

}


contract Q82 {
// 1. 특정 숫자를 입력했을 때 그 숫자까지의 3,5,8의 배수의 개수를 알려주는 함수를 구현하세요.
// - 답안

    function getNumbers(_n) public pure returns (uint) {
        count=0
        for(uint i=1; i<=_n; i++) {
            if (i % 3 ==0 || i % 5 == 0 || i % 8 ==0) {
                count++
            }

        return count;
        }
    }
}

contract Q83 {
// 1. 이름, 번호, 지갑주소 그리고 숫자와 문자를 연결하는 mapping을 가진 구조체 사람을 구현하세요. 
// 사람이 들어가는 array를 구현하고 array안에 push 하는 함수를 구현하세요.

    struct Person {
        string name;
        uint number;
        address addr;
        maaping(uint => string) numberToString;
    }

    Person[] people;

    function addPeople(string memory _name, uint _number, address _addr, uint _key, string memory _value) public {
        people(push(Person(_name, _number, _addr, _key, _value)));
    }





}

contract Q84 {
// 1. 2개의 숫자를 더하고, 빼고, 곱하는 함수들을 구현하세요. 
// 단, 이 모든 함수들은 blacklist에 든 지갑은 실행할 수 없게 제한을 걸어주세요.


    mapping(address => bool) blackList;

    function addBlacklist(address addr) public {
        blacklist[addr] = true;
    }

    function deleteBlacklist(address addr) public {
        blacklist[addr] = false;
    }

    modifier notBlacklist() {
        require(!blackList[msg.sender], "blacklisted")
        _;
    }

    function add(uint a, uint b) public pure returns (uint) {
        a + b;
    }

    function sub(uint a, uint b) public pure returns (uint) {
        a - b;
    }

    function mul(uint a, uint b) public pure returns (uint) {
        a * b;
    }


}

contract Q85 {
// 1. 숫자 변수 2개를 구현하세요. 한개는 찬성표 나머지 하나는 반대표의 숫자를 나타내는 변수입니다.
//  찬성, 반대 투표는 배포된 후 20개 블록동안만 진행할 수 있게 해주세요.
// - 답안


    uint pros;
    uint cons;
}

contract Q86 {
// 1.  숫자 변수 2개를 구현하세요. 한개는 찬성표 나머지 하나는 반대표의 숫자를 나타내는 변수입니다.
// 찬성, 반대 투표는 1이더 이상 deposit한 사람만 할 수 있게 제한을 걸어주세요.
// - 답안

    uint pros;
    uint cons;

    mapping(address => uint) Deposits;
    mapping(address => bool) hasVoted;

    modifier onlyWhoVoted() {
        require(hasVoted[msg.sender], "you should vote");
        _;
    }

    function deposit() public {
        require(msg.value >= 1 ether, "must be more tha 1 ether")
        Depositsp[msg.sender] += msg.value
    }

}

contract Q87 {
// 1. visibility에 신경써서 구현하세요. 
    
//     숫자 변수 a를 선언하세요. 해당 변수는 컨트랙트 외부에서는 볼 수 없게 구현하세요. 변화시키는 것도 오직 내부에서만 할 수 있게 해주세요. 
    
// - 답안


    uint private a;

    function setA(uint _a) internal {
        a = _a;
    }

    function getA() internal view returns {uint) {
        return a;
    }}

}


contract Q88 {
// 1. 아래의 코드를 보고 owner를 변경시키는 방법을 생각하여 구현하세요.
    
//     ```solidity
//     contract OWNER {
//     	address private owner;
    
//     	constructor() {
//     		owner = msg.sender;
//     	}
    
//         function setInternal(address _a) internal {
//             owner = _a;
//         }
    
//         function getOwner() public view returns(address) {
//             return owner;
//         }
//     }
//     ```
    
//     힌트 : 상속
    
    address newOwner

    modifier newOwner() {
        require(msg.sender == newOwner, "nope");
        _;
    }

    function setNewOnwer(address _a) public {
        newOwner=_a;
    }
    
    


}

contract Q89 {
    
// 1. 이름과 자기 소개를 담은 고객이라는 구조체를 만드세요. 
// 이름은 5자에서 10자이내 자기 소개는 20자에서 50자 이내로 설정하세요. 
// (띄어쓰기 포함 여부는 신경쓰지 않아도 됩니다. 더 쉬운 쪽으로 구현하세요.)
// - 답안
    
    struct Customer {
        string name;
        string intro;
    }


    function setName() public view returns (string memory) {
        Customer.name.length >= 5 && Customer.name.legnth <= 10;
    }


    function setIntro() public view returns (string memory) {
            Customer.intro.length >= 20 && Customer.intro.legnth <= 50;
        }

}

contract Q90 {
    
1. 당신 지갑의 이름을 알려주세요. 아스키 코드를 이용하여 byte를 string으로 바꿔주세요.


}