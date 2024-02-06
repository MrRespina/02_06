// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ex2{
    // 변수 (Variable)
    // 선언하기 위해서 자료형 명시 필수

    // 자료형 변수명 = 값;
    // uint a = 10;

    // 솔리디티의 3가지 변수 타입
    // 1. 상태 변수(state)
    //  함수 밖에서 선언
    //  블록체인에 저장되어 영속성을 가지게 됨.
    //  함수 내부 어디에서든지 사용 가능하며, 가시성 지정자에 따라서 변수의 접근 범위가 달라짐.

    // 솔리디티에서는 string을 쓰는 것을 지양함.
    // 이유는 가스를 더 소비하기 때문
    string public s = "name";
    uint public uu = 10;

    function getSol() public view{
        // 2. 지역 변수 (local)
        //  함수 안에서 선언. 블록체인에 기록되지 않음
        uint a = 20;

        // 3. 전역 변수 (global)
        //  블록체인에 관한 정보를 제공
        uint timestamp = block.timestamp;
        address sender = msg.sender;

    }

    // 상수 (Constants)
    // constant 로 코딩된 값(value)는 가스 비용을 절약
    // 상수명은 대문자로
    // string public constant MY_ADDRESS = "124-124192v4124vewas";
    // uint public constant MY_UINT = 123;

    // 불변 (Immutable)
    // Immutable 변수는 생성자 안에 선언될 수 있는데
    // 값이 수정될 순 없음.
    

    // 파라미터로 사용하는 변수명
    // _로 시작하는 문화가 있음.
    
    // uint public immutable MY_UINT;

    // constructor(uint _myUint){
    //     MY_UINT = _myUint;
    // }

    // 자료형 (data type)
    // solidity 자료형은 크게 값 타입(value)와 참조 타입(Reference type)으로 나뉨

    // 값 타입은 값이 할당되거나 함수의 파라미터로 활용이 되면 해당 값 자체가 복사됨.
    // 참조 타입은 현재 해당하는 값의 주소만 복사
    // 즉, 참조형 타입의 특징은 데이터를 어디에 저장할 지 명시해야 한다는 것.
    // 참조형은 배열(Array), 매핑(Mapping), 구조체(Struct)로 구성
 
    // 값 타입(value type)
    //  논리 타입 : bool
    //  정수 타입(Integer) : uint와 int
    //  부호없는 정수로는 uint, uint8, uint16, uint32, ...
    //      uint256은 uint로 사용
    //  부호 있는 정수는 말 그대로 음수값 : int
    //  (int는 기호가 있는 정수,uint는 기호가 없는 정수)
    //  실수(fixed point number) 타입
    //  : fixed or ufixed
    //   부호가 있는 실수 or 부호가 없는 실수
    //  바이트 타입 : bytes -> byte1 ~ byte32
    //  뒤에 붙어있는 숫자에 따라 byte의 크기가 정해짐
    //  문자의 byte의 크기를 안다면 크기에 맞게 자료형을 지정하는 것이 좋음.
    //  문자열 타입 : string
    //  * 솔리디티에서는 문자열 타입 사용 지양
    //  가스를 더 소비하게 됨.
    //   GAS는 돈이라고 생각하면 됨.
    //  솔리디티) string을 받으면 byte로 변화시켜서 이해함
    //   반대로 byte를 string으로 변회시켜서 꺼내줌
    //  string과 byte를 왔다갔다 하면서 가스를 소비하는 것보다 byte만 받아서 사용하면 가스를 아낄 수 있고
    //  솔리디티 입장에서도 더 편함.

    //  주소 타입 : address
    //   은행의 계좌번호 같은 개념
    //   계정의 주소, 주소형 타입의 크기는 20bytes로 지정
    //   유저의 고유 ID or 배포된 스마트 컨트랙트의 아이디
    //   이 주소를 통해서 암호화폐(디지털코인), 스마트 컨트랙트를 주고 받을 수 있음.

    //  참조 타입(Reference Type)
    //   1. 매핑 (Mapping)
    //   JS의 Object와 같이 Key와 Value의 형태로 저장
    //    mapping (key => value) 가시성지정사 매핑명 으로 정의
    //   key type에는 모든 기본 값(정수 등),bytes,string,컨트랙트 들어갈 수 있음.
    //   value type에는 다른 매핑과 배열을 포함한 모든 유형을 넣을 수 있음.
    //   ex) 각 유저의 토큰 잔액을 나타내는 것을 매핑으로 구현

    mapping (address => uint) public myAddress;

    // 매핑에 키와 값을 추가하기
    // 파라미터 명 앞에는 _ 붙일 것.
    function addMapping(address _key,uint _value) public {
        myAddress[_key] = _value;
    }

    // 추가한 매핑 값 가져오기
    function getMapping(address _key) public view returns(uint) {
        return myAddress[_key];
    }

    // 매핑 지우기
    function deleteMapping(address _key) public {
        delete(myAddress[_key]);
    }

}