bit forks[4];
bool eaten[4];
ltl starvation {always eventually eaten[0] == true && eaten[1] == true && eaten[2] == true && eaten[3] == true};

init
{
	atomic{
		run philosopher(0,1);
		run philosopher(1,2);
		run philosopher(2,3);
		run philosopher(3,0);
	}
}

proctype philosopher(int left; int right)
{
	int numOfForks = 0;
	do
	::atomic {
		(forks[left] == 0) ->
		forks[left] = 1;
		numOfForks++;
	}
	::atomic {
		(forks[right] == 0) ->
		forks[right] = 1;
		numOfForks++;
	}

	::(numOfForks == 2) -> break;
	od
	forks[left] = 0;
	forks[right] = 0;
	eaten[left] = true;

	printf("P: Prove that it is possible to solve the deadlock problem: Left Fork index = %d Right Fork index = %d Fork Count= %d\n", left, right, numOfForks);
}
