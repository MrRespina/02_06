// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ex5{

    // 함수 (Function)
    //  일반적으로 function 키워드, 함수명, 가시성지정자 의 요소가 필요

    // 가시성 제한자(제어자)
    //  변수나 함수의 공개범위를 제한하는 것
    //  함수 or 변수 등에 접근하려고 할 때 지정된 가시성 지정자에 의해
    //  접근 여부가 달라짐.
    //  가시성 제어자를 함수명 뒤에 써주는 것이 특징
    //  1. public : 내,외부 모두 접근 가능
    //  2. external : 선언된 컨트랙트 외부에서만 접근 가능
    //  3. private : 선언된 컨트랙트 내부에서만 접근 가능
    //  4. internal : 선언된 컨트랙트 내부 or 컨트랙트를 상속받은 컨트랙트 안에서 접근 가능

    // // 일반적 함수의 모양
    // function exFunc() public {
    //     // 코드
    // }

    uint public a = 10;
    function changeA() public{
        a = 100;
    } // 이 함수 실행 시, a는 100이 된다.

    // // 파라미터나 return 이 필요한 경우
    // function exFunc1(Parameter) public returns(return 값 자료형){
    //     // 코드 작성
    //     // return >
    // }

    // 두 개의 정수를 받아 덧셈한 값을 반환하는 함수
    function addNum(uint _a, uint _b) public pure returns(uint){
        uint sum = _a + _b;
        return sum;
    }

    // 솔리디티의 저장 영역
    //  Storage,Memory,Calldata,Stack < 4가지
    // 참조타입이 파라미터나 리턴값으로 사용될 때
    // 솔리디티의 영역 중 알맞는 하나의 저장 영역을 같이 명시해야함!

    // string을 function에서 사용하려면 memory라는 키워드를 사용해야 했었음.
    // Storage : 데이터가 블록체인 상에 영구적으로 저장이 되는 공간
    // Memory : 단기적으로(임시적으로) 데이터를 저장하는 공간
    // Calldata : 트랜잭션 or call 함수의 파라미터가 유지되는 읽기 전용 공간
    // Stack : 가상머신에서 휘발성을 가진 데이터를 유지 및 관리하는 공간

    // Modifier
    // 가시성 지정자 다음에 명시하여 함수 로직에 제약을 주는 역할
    // pure, view가 있고, 두 가지 모두 해당하지 않으면 생략 가능함.

    // 1. pure
    //  함수 밖에 선언된 변수를 함수 내부로 가져오지 못하게 하는 키워드
    //  순수하게 함수 내부에서 정의된 변수나, 함수 파라미터만 사용 가능
    // 2. view
    //  함수 외부의 변수를 읽을 수는 있으나, 값을 함수 내부에서는 변경 불가능
    



}