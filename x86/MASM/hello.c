#include <stdio.h>

int add(int left, int right)
{
  return left + right;
}

int main(int argc, char* argv)
{
  int x = 1;
  int y = 2;
  int z = add(x, y);
}
