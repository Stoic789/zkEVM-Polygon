pragma circom 2.0.0;

template CustomCircuit() {
    signal input a;
    signal input b;
    signal output q;

    // Intermediate signals
    signal  x, y;

    // AND gate
    component andGate = AND();
    andGate.a <== a;
    andGate.b <== b;
    x <== andGate.out;

    // NOT gate
    component notGate = NOT();
    notGate.in <== b;
    y <== notGate.out;

    // OR gate
    component orGate = OR();
    orGate.a <== x;
    orGate.b <== y;
    q <== orGate.out;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b; // AND gate implementation
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 - in; // NOT gate implementation
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a * b; // OR gate implementation
}

component main = CustomCircuit();
