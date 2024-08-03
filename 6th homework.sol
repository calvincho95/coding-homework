// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9.0;

contract Q61 {

//     1. a의 b승을 반환하는 함수를 구현하세요.
// - 답안

        function (uint _a, uint _b) public (uint) {
            return _a **_b;
        }

    }
}

contract Q62 {
// 1. 2개의 숫자를 더하는 함수, 곱하는 함수 a의 b승을 반환하는 함수를 구현하는데 3개의 함수 모두 2개의 input값이 10을 넘지 않아야 하는 조건을 최대한 효율적으로 구현하세요.
// - 답안
    function add(uint _a, uint _b) public pure return (uint) {
        require(_a+_b <= 10, "nope");
    }
    return _a + _b;

    function add(uint _a, uint _b) public pure return (uint) {
        require(_a*_b <= 10, "nope");
    }
    return _a * _b;

    function add(uint _a, uint _b) public pure return (uint) {
        require(_a**_b <= 10, "nope");
    }
    return _a + _b;
}

contract Q63 {
// 1. 2개 숫자의 차를 나타내는 함수를 구현하세요.
// - 답안

    funciton sub(uint _a, uint _b) public pure returns (uint) {
        return _a > _b ? _a - _b : _b - _a;
    }
    })
}

contract Q64 {
// 1. 지갑 주소를 넣으면 5개의 4bytes로 분할하여 반환해주는 함수를 구현하세요.
// - 답안

    function fourbytes(address _addr) public pure returns (bytes4) {

    }
}

contract Q65 {
1. 숫자 3개를 입력하면 그 제곱을 반환하는 함수를 구현하세요. 그 3개 중에서 가운데 출력값만 반환하는 함수를 구현하세요.
    
//     예) func A : input → 1,2,3 // output → 1,4,9 | func B : output 4 (1,4,9중 가운데 숫자) 
    
// - 답안

    function power(uint _a, uint _b, uint _c) public pure returns (uint, uint, uint) {
        return (_a**2, _b**2, _c**3);

    }

    

    function median(uint a, uint b, uin c) public pure reutnrs(uint) {
        (, uint res, ) = A(a, b, c);
        return res;
    }
}

contract Q66 {
// 1. 특정 숫자를 입력했을 때 자릿수를 알려주는 함수를 구현하세요. 
//추가로 그 숫자를 5진수로 표현했을 때는 몇자리 숫자가 될 지 알려주는 함수도 구현하세요.
// - 답안

    function doe(uint _n) public pure returns(uint) {
        uint digit = 0;

        while(_n>=0) {
            digit++;
            _n/=10;
        }

        return digit;
    }

    function quinary(uint _n) public pure returns(uint) {
        uint digit =1;

        while(_n>=5) {
            digit++;
            _n/=5;
        }

        return digit;
    }

contract Q67 {
1. 자신의 현재 잔고를 반환하는 함수를 보유한 Contract A와 다른 주소로 돈을 보낼 수 있는 Contract B를 구현하세요.
    
//     B의 함수를 이용하여 A에게 전송하고 A의 잔고 변화를 확인하세요.
    
// - 답안


contract A {
    function getBalance() public pure returns (uint) {
        return address(this).balance;
    }
        receive external payable{}
}


contract B{
    function sendEther(address payable _a) public payable {
        require(msg.value > 0, "must be greater than $0");
        _a.transfer(msg.value);
    }

}

contract Q68 {
1. 계승(팩토리얼)을 구하는 함수를 구현하세요. 계승은 그 숫자와 같거나 작은 모든 수들을 곱한 값이다. 
    
//     예) 5 → 1*2*3*4*5 = 60, 11 → 1*2*3*4*5*6*7*8*9*10*11 = 39916800
    
//     while을 사용해보세요
    
// - 답안

    function Factorial(uint _a) public pure returns(uint) {
        require (_a > 0, "nope")

        uint result = 1;
        while(i <= n) {
            result  *= i;
            i++;
        }

        return result;
    }
}

import "@openzepplin/contracts/utils/Strings.sol""

contract Q69 {
1. 숫자 1,2,3을 넣으면 1 and 2 or 3 라고 반환해주는 함수를 구현하세요.
    
//     힌트 : 7번 문제(시,분,초로 변환하기)
    function onetwothree(uint _a, uint _b, uint _c) public pure return (string memory) {
        if (_a == 1 && _b ==2 && _cc=3) {
            return "1 and 2 or 3";
        }
    }

// - 답안
}

contract Q70 {
// 1. 번호와 이름 그리고 bytes로 구성된 고객이라는 구조체를 만드세요. bytes는 번호와 이름을 keccak 함수의 input 값으로 넣어 나온 output값입니다.
// 고객의 정보를 넣고 변화시키는 함수를 구현하세요.


    sturct Customer {
        uint number;
        string name;
        bytes32 _b;
    }



    function setCustomer(uint _number, string calldata _name) public pure returns(Custoemr memory c){
        c = Customer(_number, _name, keccak256(abi.encodPacked(_number, _name)));
    }

}