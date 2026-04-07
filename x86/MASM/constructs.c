#include <stdio.h>

/* {{## BEGIN ifLoop ##}} */
int ifLoop(int arg)
{
  if (arg < 5)
  {
    return 12;
  }
  else
  {
    return 17;
  }
}
/* {{## END ifLoop ##}} */

/* {{## BEGIN forLoop ##}} */
void forLoop()
{
  for (int i=0; i<10; i++)
  {
    printf("Hello, world, this is the %d loop\n", i);
  }
}
/* {{## END forLoop ##}} */

/* {{## BEGIN main ##}} */
int main(int argc, char* argv)
{
  int result = ifLoop(argc);
  forLoop();
}
/* {{## END main ##}} */
