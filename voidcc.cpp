#include <iostream>
#include <stdlib.h>
using namespace std;

int main (int argc, char* argv[]){
  if(argc != 2){
    cerr<<"the number of the main argments should be two."<<endl;
    return 1;
  }

  cout<< "  .intel_syntax noprefix" << endl
      << "  .global main" << endl
      << "main:" << endl
      << "  mov rax, " << atoi(argv[1])<<endl
      << "  ret" << endl;

  return 0;
}
