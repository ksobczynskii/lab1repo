#include "rome.hpp"

namespace rome
{
    Province create_province(std::string name)
    {
        Province prov;
        std::vector<std::string> empty;
        prov.name = name;
        prov.cities = empty;
        return prov;
    }
    void add_city(Province *province, std::string city)
    {
        province->cities.push_back(city);
    }
    std::string description(Province *province)
    {
        std::string result = province->name + ": ";
        for (int i = 0; i < province->cities.size() - 1; i++)
        {
            result += province->cities[i] + ", ";
        }
        return result + province->cities[province->cities.size() - 1] + ".";
    }
}