#include <iostream>
#include "vars.hpp"
#include "greeter.hpp"

int main()
{
    std::cout << greeter::english() << std::endl;
    std::cout << greeter::polish() << std::endl;
    std::cout << greeter::greek() << std::endl;

    print_vars();
    inc_vars();
    print_vars();
    std::cout << "global_extern: " << global_extern << std::endl;
}
