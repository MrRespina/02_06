// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ex8{

    // instance
    // 주로 하나의 컨트랙트에서 다른 컨트랙트를 접근할 때
    //  ex) A,B 두개의 컨트랙트가 있다고 가정
    //  B에서 A의 함수나 변수들에 접근하여 사용하고 싶다면,
    //  A 인스턴스를 만들어서 B 컨트랙트 안에서 사용
    uint public a = 5;
    function change(uint _u) public {
        a = _u;
    }

}

contract Ex8_1{
    // 위의 컨트랙트를 불렀어도 완전히 다른 별개이기 때문에
    // instance를 만들어서 변수 a의 값을 변경해도
    // Ex8 컨트랙트에는 영향을 미치지 않음.
    Ex8 instance = new Ex8();

    function getEx8() public view returns(uint){
        return instance.a();
    }

    function change_ex8(uint _u) public{
        instance.change(_u);
    }

}