
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9.0;

contract Q11 {
//1. uint 형이 들어가는 array를 선언하고, 짝수만 들어갈 수 있게 걸러주는 함수를 구현하세요.
    uint [] numbers;

    function onlyEven(uint _a) public {
        if (_a / 2 == 0) {
            numbers.push(_a);
        }
    }
}


contract Q12 {
//2. 숫자 3개를 더해주는 함수, 곱해주는 함수 그리고 순서에 따라서 a*b+c를 반환해주는 함수 3개를 각각 구현하세요.
    function add(uint _a, uint _b, uint _c) public pure returns (uint) {
        return _a + _b + _c;
    }

    function mul(uint _a, uint _b, uint _c) public pure returns (uint) {
        return _a * _b * _c;
    }
}


contract Q13 {
//3. 3의 배수라면 “A”를, 나머지가 1이 있다면 “B”를, 나머지가 2가 있다면 “C”를 반환하는 함수를 구현하세요.

    function getA(uint _a) pubic pure returns (uint) {
        if (_a % 3 == 0) {
            return "A";
        } else if (_a % 3 == 1) {
            return "B";
        } else if (_a % 3 == 2) {
            return "C";
        }
    }
}


contract Q14 {

//4. 학번, 이름, 듣는 수험 목록을 포함한 학생 구조체를 선언하고 학생들을 관리할 수 있는 array를 구현하세요. array에 학생을 넣는 함수도 구현하는데 학생들의 학번은 1번부터 순서대로 2,3,4,5 자동 순차적으로 증가하는 기능도 같이 구현하세요.
    struct student {
        uint id;
        string name;
        string [] classes
    
    }

    student[] s1;

    function pushStudent(string memory _b, string [] memory _c) public {
        s1.push(student(s1.length+1, _b, _c));
    }
}


contract Q15 {
//5. 배열 A를 선언하고 해당 배열에 0부터 n까지 자동으로 넣는 함수를 구현하세요. 
    uint [] A;

    function pushA() public {
        for (uint i=0; i=<n; i++) {
            A.push(i);
        }
    }
}




contract Q16 {

//6. 숫자들만 들어갈 수 있는 array를 선언하고 해당 array에 숫자를 넣는 함수도 구현하세요. 또 array안의 모든 숫자의 합을 더하는 함수를 구현하세요.

    uint [] Numbers;

    function pushNumbers(uint _n) public  {
        Numbers.push(_n);
    }

    function getNumbers() public view returns (uint) {
        uint a;


        for (uint i=0; i =< Numbers.length-1; i++) {
            a = a+Numbers[i];
        } 
        return a;
    }

    
}



contract Q17 {

//7. string을 input으로 받는 함수를 구현하세요. 이 함수는 true 혹은 false를 반환하는데 Bob이라는 이름이 들어왔을 때에만 true를 반환합니다. 

    function trueBob(string memory _a) public pure reutrns (bool) {
        if ( keccak256(abi.encodPacked(_a)) == keccak256(abi.encodePacked("bob"))) {
            return true;
        } else {
            return false;
        }
    }

}


contract Q18 {

//8. 이름을 검색하면 생일이 나올 수 있는 자료구조를 구현하세요. (매핑) 해당 자료구조에 정보를 넣는 함수, 정보를 볼 수 있는 함수도 구현하세요.

    mapping(string => uint) Birthday;

    function setBrithday(string memory _a, uint _b) public {
        Birthday[_a] = _b;
    }

    function search(string memory _a) public view returns (uint) {
        return Birthday[_a];
    }

}


contract Q19 {
//9. 숫자를 넣으면 2배를 반환해주는 함수를 구현하세요. 단 숫자는 1000이상 넘으면 함수를 실행시키지 못하게 합니다.

    function Return(uint _a) public pure returns {
        require (_a < 1000, "nope");
        return _a * 2;        
    }
}




contract Q20 {
//10. 숫자만 들어가는 배열을 선언하고 숫자를 넣는 함수를 구현하세요. 15개의 숫자가 들어가면 3의 배수 위치에 있는 숫자들을 초기화 시키는(3번째, 6번째, 9번째 등등) 함수를 구현하세요. (for 문 응용 → 약간 까다로움)
    - 답

    uint[] numbers;

    function pushNumber(uint _n) public {
        numbers.push(_n);

        if(numbers.length==15) {
            for(uint i=3;i<numbers.length+1;i+=3) {
                delete numbers[i-1];
            }
        }
    }
    function getNumbers() public view returns(uint[] memory) {
        return numbers;
    }
}