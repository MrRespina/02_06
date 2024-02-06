// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ex6 {
    
    // 연산자(Operator)

    // string s = "smt" 대입연산자 : 변수에 값을 할당함

    // 산술연산자
    uint a = 16 + 2;
    uint b = 19 - 1;
    uint c = 6 * 3;
    uint d = 36 / 2;
    uint e = 11 % 2;
    uint f = 4 ** 2;

    // 할당연산자
    //  대입과 산술이 합쳐진 형태
    function calculate() public returns(uint,uint,uint,uint,uint){
        a += 100;
        b -= 50;
        c *= 2;
        d /= 3;
        e %= 5;
        return(a,b,c,d,e);
    }

    // 비교연산자
    bool aa = 1 > 3;
    bool bb = 3 < 2;
    bool cc = 12 >= 11;
    bool dd = 5 <= 5;
    bool ee = 1 == 3;
    bool ff = 3 != 3;

    // 논리연산자
    //  AND, OR, NOT, ... 등이 있음.
    bool aaa = true && true;
    bool bbb = true && false;
    bool ccc = false && false;
    bool ddd = true || true;
    bool eee = !true;


}