bit forks[2];

init
{
	atomic{
		run philosopher(0,1);
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
	printf("P:One Philosopher: Left Fork index = %d Right Fork index = %d Fork Count= %d\n", left, right, numOfForks);
}
