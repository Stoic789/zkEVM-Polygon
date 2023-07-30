# Zardkat Project

The Zardkat project is an innovative blockchain application that leverages zkEVM technology on the Polygon (Mumbai Testnet) to enable private and secure transactions. It employs the `hardhat` framework along with the powerful cryptographic libraries `circom` and `snarkjs` to create zero-knowledge proofs for confidential computations.

## Custom Circuit - Logical Operations

The heart of the Zardkat project lies in the custom circuit designed to perform various logical operations using AND, NOT, and OR gates. This circuit implements a complex logical expression to achieve a specific computation securely without revealing the actual input values.

### Circuit Description

The custom circuit takes two input signals, `a` and `b`, and produces an output signal `q`. Here's a detailed description of the circuit's logic:

1\. **AND Gate**: The AND gate takes inputs `a` and `b` and calculates their logical AND. The output is stored in an intermediate signal `x`.

2\. **NOT Gate**: The NOT gate takes the input `b` and computes its logical negation. The result is stored in an intermediate signal `y`.

3\. **OR Gate**: The OR gate takes the intermediate signals `x` and `y` and calculates their logical OR. The final output of the custom circuit is stored in the signal `q`.

### Purpose of the Custom Circuit

The custom circuit serves a crucial role in the Zardkat project. It enables the execution of private computations on the blockchain without revealing sensitive data. By leveraging zero-knowledge proofs, Zardkat users can demonstrate the validity of computations without disclosing actual inputs or intermediate results, ensuring data privacy and security.

### Proof Generation and Verification

To ensure the correctness of the private computations, the custom circuit is utilized in generating zero-knowledge proofs. The `snarkjs` library is employed to create these proofs based on the circuit's logic. These proofs are then verified using a Solidity-based verifier contract deployed on the Polygon Mumbai Testnet.

## Getting Started

Follow the steps below to set up and utilize the Zardkat project:

### Prerequisites

- Node.js (v16 or later)

- npm (Node Package Manager)

- Hardhat (v2.12.7 or later)

### Installation

1\. Clone the Zardkat repository to your local machine.

2\. Install the required project dependencies:

```bash

npm install

```

3\. Compile the circom circuits:

```bash

npx hardhat circom

```

4\. Generate the verification key and Solidity verifier contract:

```bash

npx hardhat zkp-compile

```

### Usage

To generate a zero-knowledge proof and verify it using the Solidity verifier:

```bash

npx hardhat run deploy.ts

```

## Contributing

Contributions to the Zardkat project are highly appreciated! If you wish to contribute, please fork this repository, create a new branch, implement your changes, and submit a pull request.

## License

The Zardkat project is licensed under the ISC License. See the [LICENSE](LICENSE) file for details.

---

