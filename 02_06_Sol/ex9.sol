// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// 상속
// 스마트 컨트랙트 사이의 상속은 재산이나 권리를 주는것이 아닌, 변수와 함수들을 상속함.

contract Dog{
    string public dogName = "V";
    uint public age = 3;
    string public nickName ="Veve";

    function getDogName() view public returns (string memory){
        return dogName;
    }

    function getAge() view public returns (uint){
        return age;
    }

    function getNickname() view public returns (string memory){
        return nickName;
    }

}

// 그대로 상속받음
// 상속받을 컨트랙트 is 상속 주는 스마트 컨트랙트 {
    // 내용
// }

contract Puppy is Dog{
    
}