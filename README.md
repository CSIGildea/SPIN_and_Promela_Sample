# SPIN and Promela Sampless
CS2016 - Lab #4 - SPIN and Promela
Practical 4 – SPIN & Promela

This practical is worth 6% of your year-end mark and will be marked in Week 8 – the week after reading week.

The purpose of the practical is to give you the opportunity to explore SPIN and Promela

Go to the SPIN Website for lots of great resources for learning about SPIN and Promela, including downloads of the SPIN system for Linux, Mac OS X and Windows.
Part 1 –– Introductory Use of Promela and SPIN

Write a Promela model of the following concurrent system, which is designed to terminate with n having the value 4.
Concurrent Counting Algorithm
integer n <-- 0
process p 	process q 
p1: do 2 times 	q1 do 2 times
    temp <-- n 	    n <- n+1            
    temp <-- temp+1 	 
    n <-- temp 	 

As you know, SPIN can be run in the regular "interpretation" mode or in the "verification" mode. In interpretation mode, SPIN treats the Promela descriptions as programmes and runs the system. In the more powerful verification mode, SPIN can be used to verify (i.e. to prove) properties of the system.

Use SPIN to prove that the system is faluty, i.e. that it does not always terminate with n having the value 4.
Part 2 –– The Dining Philosophers Problem

The Dining Philosophers is a "an example problem often used in concurrent algorithm design to illustrate synchronization issues and techniques for resolving them."

Use Promela and SPIN to explore variations of the Dining Phisophers problem:

    Model a situation where there is only one philosopher at the table. Prove that no deadlock, starvation or livelock occurs.
    Prove that with two philosophers who are not seated beside one another, no deadlock, starvation or livelock occurs.
    Prove that deadlock can occur if just two philosophers are present, but seated beside one another.
    Prove that deadlock can occur with four philosophers.
    Prove that it is possible to solve the deadlock problem in all cases, but that livelock and starvation are possible.
