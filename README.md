# Password Generator

## Overview
This is a simple password generator written in Haskell. The program allows users to specify the desired password length and generates a random password using a mix of uppercase letters, lowercase letters, digits, and special characters.

## Features
- User-specified password length
- Randomly generated secure passwords
- Uses the `System.Random` module for randomness

## Installation
If you want to compile the program yourself, ensure you have GHC installed. Then, use the following commands:

```sh
# Compile the program
ghc -o passwordgen parola.hs

```
Alternatively, you can directly use the precompiled executable passwordGen.exe, which is available in this repository.

## Usage

1. Run the executable.
   - If you compiled it yourself
        ```sh
        ./passwordGen    # On Linux/macOS
        passwordGen.exe  # On Windows
        ```
    - If you are using the precompiled version, simply run passwordGen.exe on Windows.
2. Enter the desired password length when prompted.
3. The program will generate and display a random password.

## Example Output

```sh
Introduceti lungimea parolei:
5
Parola generata: evflr
Apasati Enter pentru a iesi.
```
