// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ex3{

    // 배열(Array)
    //  참조 타입
    // 자료형 배열 가시성지정자 배열명;
    // string[] public myArr;  // 동적(dynamic) 배열 : 정해진 크기 없이 계속 커질 수 있음. 값을 입력하기 전까지는 크기가 0
    string [] public myArr = ['solidity','is','very','difficult'];
    uint[5] public myArr1 = [1,2,3,4,5];  // 정적 배열(static) : 사용할 배열의 크기 미리 지정 , 정해진 크기를 늘리거나 줄일 수 없음

    // 각 배열의 길이 구하기
    function getMyArrlength() public view returns(uint){
        return myArr.length;
    }

    function getMyArr1length() public view returns(uint){
        return myArr1.length;
    }

    // key(index)를 넣어서 value를 구하기
    function getMyArr(uint _index) public view returns(string memory){
        return myArr[_index];
    }

    function getMyArr2(uint _index) public view returns(uint){
        return myArr1[_index];
    }

    function putVal(string memory _value) public{
        myArr.push(_value);
    }

    // myArr1은 정적배열(크기 고정)이기 때문에 크기 변경이 안됨. 에러
    // function putVal1(uint _value) public{
    //     myArr1.push(_value);
    // }

    // 배열 값 변경
    function changeMyArr(uint _i, string memory _v) public{
        myArr[_i] = _v;
    }

    function changeMyArr1(uint _i, uint _v) public{
        myArr1[_i] = _v;
    }

    // 배열의 값 삭제1 - 마지막 인덱스가 없어짐 & 배열의 크기도 줄어듬
    function removeMyArr() public{
        myArr.pop();
    }

    // 배열의 값 삭제2 - 인덱스 지정 삭제
    function delMyArr(uint _i) public{
        delete myArr[_i];
    }


}