% Romeo loves julet
% loves is a predicate, for constants romeo and juliet
% This is a fact
loves(romeo, juliet).

% Define a rule: romeo loves juliet is juliet loves romeo
loves(juliet, romeo) :- loves(romeo, juliet).


happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).


% This is a rule
runs(albert) :- 
	happy(albert).

dances(alice) :- 
	happy(alice),
	% , here means AND
	with_albert(alice).

does_alice_dance :- dances(alice),
	write('When Alice is happy, and with Albert she dances').

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% This says, albert owns a pet, which is a cat, named olive
owns(albert, pet(cat, olive)).
% query: owns(albert, pet(cat, X))

customer(tom, smith, 20.55).
customer(sally, smith, 120.55).

get_cust_bal(FName, LName) :-
	customer(FName, LName, Bal),
	format('~w owes us $~2f ~n', [LName, Bal])
% query: get_cust_bal(sally, smith).
.
