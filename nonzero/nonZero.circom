pragma circom 2.0.0;

template nonZero() {
    signal input in;
    signal inv;

    inv <-- 1/in;

    1 === in * inv; 
}

/*
    a != 0 이므로 b == 0 임을 증명
*/
template Main() {
    signal input a;
    signal input b;

    component nz = nonZero();

    nz.in <== a;
    0 === a*b;
}

 component main = Main();