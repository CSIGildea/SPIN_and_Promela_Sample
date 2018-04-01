byte n = 0, finish = 0;

active proctype P() {
  byte temp, count = 0;
  do :: count == 2 -> break
     :: else ->
             temp = n;
             temp++;
             n = temp;
             count++;
  od;
  finish++;
}

active proctype Q() {
  byte temp, count = 0;
  do :: count == 2 -> break
     :: else ->
             n++;
	     count++;
  od;
  finish++;
}


active proctype WaitForFinish() {
  finish == 2;
  printf("n = %d\n", n);
}
