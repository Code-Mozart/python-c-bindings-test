echo 'recompiling...'
c++ -O3 -Wall -shared -std=c++17 -undefined dynamic_lookup $(python3 -m pybind11 --includes) hello_world.cpp -o hello_world$(python3-config --extension-suffix)
echo 'compiled'

echo 'running the python script:\n------'
python3 script.py