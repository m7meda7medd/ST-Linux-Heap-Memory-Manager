# Linux HMM Library

## Overview
The **HMM Library** is a simple C-based library that provides both a static and dynamic implementation. The project includes a `Makefile` to facilitate the compilation and linking process.

## Features
- Generates a **static library** (`libhmm.a`)
- Generates a **dynamic library** (`libhmm.so`)
- Supports **debugging mode**
- Easy compilation using `make`

## Files
- `hmm.c` – Source file containing the implementation
- `hmm.h` – Header file (if applicable)
- `Makefile` – Build automation file

## Build Instructions
To build the project, use the following commands:

### Build Both Static and Dynamic Libraries
```sh
make
```

### Build Static Library Only
```sh
make static
```

### Build Dynamic Library Only
```sh
make dynamic
```

### Build with Debugging Support
```sh
make debug
```

### Clean Up Compiled Files
```sh
make clean
```

## Usage
To use the **static library** in your project:
```sh
gcc -o my_program my_program.c -L. -lhmm -static
```

To use the **dynamic library** in your project:
```sh
gcc -o my_program my_program.c -L. -lhmm -Wl,-rpath,.
```

## License
This project is open-source and available under the MIT License.

## Author
Mohamed Abokhalil 
moahmed1907@gmail.com 

