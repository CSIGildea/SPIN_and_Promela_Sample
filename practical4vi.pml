bit forks[4];

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
	printf("P: left Fork index = %d right Fork index = %d fork Count= %d\n", left, right, numOfForks);
}
