% Romeo loves julet
% loves is a predicate, for constants romeo and juliet
loves(romeo, juliet).

% Define a rule: romeo loves juliet is juliet loves romeo
loves(juliet, romeo) :- loves(romeo, juliet).


