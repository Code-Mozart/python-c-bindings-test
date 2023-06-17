# Python3 C-Bindings Test
_Test: C++ Bindings for Python3_

This repository contains my test for binding C++ functions in a Python 3.11.4 script using the [pybind11](https://github.com/pybind/pybind11) library.

## Setup

To setup this binding you need to have installed:
- Python 3
- pybind11 (don't install CMake)
  ```
  pip install pybind11
  ```

Then simply run the command (requires python3 to be loaded in the $PATH variables).
```
c++ -O3 -Wall -shared -std=c++17 -undefined dynamic_lookup $(python3 -m pybind11 --includes) hello_world.cpp -o hello_world$(python3-config --extension-suffix)
```

Note that pybind11 is a header only library so you don't have to link anything. The `$(python3 -m pybind11 --includes)` part evaluates to the required -I flag for the compiler and takes care of the inclusion of the header files.
