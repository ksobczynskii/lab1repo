#include <iostream>

using namespace std;

int global_extern = 0;
static int global_static = 0;

void inc_vars()
{
    cout << "Increasing..." << endl;
    global_extern++;
    global_static++;
}

void print_vars()
{
    cout << "global_extern: " << global_extern << endl;
    cout << "global_static: " << global_static << endl;
}