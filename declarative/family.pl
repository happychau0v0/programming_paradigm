%-------------------------------------------------------------------------------
% SWISH Online Prolog Interpreter
% https://swish.swi-prolog.org/
%
% Learn Prolog Now!
% https://lpn.swi-prolog.org/lpnpage.php?pageid=online
%
% Tutorialspoint
% https://www.tutorialspoint.com/prolog/index.htm
%
%-------------------------------------------------------------------------------

% Knowledge bases

female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(bob).
male(tom).
male(peter).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
haschild(X):- parent(X,_).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.


/** <examples>

?- parent(X,jim).
?- mother(X,Y).
?- haschild(X).
?- sister(X,Y).

*/