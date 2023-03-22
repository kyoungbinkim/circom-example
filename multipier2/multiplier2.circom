pragma circom 2.0.0;

template Multiplier2() {
    signal input a;
    signal input b;
    signal output c;

    // ex1
    // c <-- a*a*b;

    // ex2
    // compile error
    // c === a*b;

    // ex3 
    // c <== a*b;

    // ex4
    // 언제나 proof 생성이 불가능할 것이다.
    // c <-- a*b*b;
    // c === a*b;
 }

 component main = Multiplier2();