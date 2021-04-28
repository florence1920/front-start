//1.Use strict 
//added in ES5
//use this for Vanila Javascript
'use strict';

//2. Variable
//let (added in ES6)
let gName = 'gName';    //글로벌 변수
{
    let name = 'sh';    //지역 변수, 가능하면 지역 변수로! 전역변수는 메모리 많이 잡아 먹음 
    console.log(name);
    name = 'hs';
    console.log(name);
    console.log(gName);
}
console.log(gName);
console.log(name);

//var 선언하기도 전에 값을 넣을 수 있다.  이걸 var hoisting이라고 함
//hoisting 이란 어디에 선언했냐에 상관없이 항상 제일 위로 선언을 제일 위로 끌어올려주는 것!
//블록 스코프가 아니다.

//3.Constants 상수! r(readOnly)
// 값을 선언하고 할당한 뒤에 값을 변경 불가한것! Immutable<-> Mutable
// 좋은 이유!
// 1. 보안 
// 2. 쓰레드 안전성 
// 3. 실수를 줄이기 위해서 

//4.Variable Type   rw(read/write)
//primitive Type item : number, string, boolean, null, undefiend, symbol
//object, box container
//function, first-class function 
//primitive 같은 경우 값 자체가 메모리에 저장
//object 가르키는 주소가 저장된다. 

//Number
let a = 1.2;
let b = 1;
console.log(a-b);

//string
const char = 'c';
const subject = 'math';
console.log('value: ${subject}, type:${typeof math}');
console.log('value:'+subject);

//5.Dynamic typing: 선언할 때 어떤 타입인지 선언하지 않고 프로그램이 실행할 때(런타임으로) !