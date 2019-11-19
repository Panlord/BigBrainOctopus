//
// Created by xaaro on 10/27/2019.
// Practice for opening and outputting the contents of a json file

#include <fstream>
#include <iostream>
#include "json.hpp"

int main(int argc, char** argv) {
  std::ifstream file;
  file.open(argv[1]);
  nlohmann::json jsonObject;
  if (file.is_open()) {
    file >> jsonObject;
  }
  std::cout << jsonObject.dump(2) << std::endl;

  return 0;
}