#include <pybind11/pybind11.h>
#include <string>

void say_hello(std::string& str)
{
    printf("Hello %s\n", str.c_str());
}

PYBIND11_MODULE(hello_world, m) {
    m.def("say_hello", &say_hello, "A function that says hello multiple times");
}
