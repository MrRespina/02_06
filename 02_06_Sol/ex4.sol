// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ex4{

    // 구조체 : 사용자 정의 자료형

    struct Person{
        string name;
        uint age;
        string phone;
    }

    Person public p1 = Person("J",19,"01071517524");
    Person public p2;   // 아무 값도 입력하지 않음, Person이 가진 자료형들의 기본값들이 저장됨

    // Person 자료형은 참조 타입.
    // 함수 안에서 파라미터로 memory와 저장 공간 명시해야...
    // 
    function getP1() public view returns(Person memory){
        return p1;
    }

    function getP2() public view returns(Person memory){
        return p2;
    }

    // p2에 Person 자료형 값 대입하는 함수
    function tryP2(string memory _name,uint _age,string memory _phone) public {
        p2 = Person(_name,_age,_phone);
    }

    // p1의 나이를 바꾸는 함수
    function chageP1Age(uint _age) public{
        p1.age = _age;
    }

    
}

