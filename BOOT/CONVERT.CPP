#include <iostream.h>
#include <fstream.h>

void main()
 {
  int count=1000;
  char basicfile[31];
  ifstream in("d:\lib\qb\boot\name.dir");
  ofstream out("d:\lib\qb\boot\name.txt");
  
   while( !in )
    {
     count += 10;
     in>>basicfile;
     cout<<'\n'<<basicfile;
     out<<count<<"  data ";
     out<<basicfile<<'\n';
    }

  in.close();
  out.close();
 }



