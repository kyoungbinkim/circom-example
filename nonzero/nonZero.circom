pragma circom 2.0.0;

template nonZero() {
    signal input in;
    signal inv;

    inv <-- 1/in;

    1 === in * inv; 
}

 component main = nonZero();