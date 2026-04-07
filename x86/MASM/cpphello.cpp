#include <stdio.h>
#include <string.h>

class Message
{
public:
  Message(const char* text);
  ~Message();

public:
  void print();

private:
  char* m_text;
};

Message::Message(const char* text)
{
  int length = ::strlen(text);
  m_text = new char[length];
  strcpy(m_text, text);
}
Message::~Message()
{
  delete [] m_text;
}
void Message::print()
{
  puts(m_text);
}


int main(int argc, char* argv)
{
  Message msg1("Hello world");
  msg1.print();

  Message* msg2 = new Message("Hello again!");
  msg2->print();
  delete msg2;
}
