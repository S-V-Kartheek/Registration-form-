% Facts about family
parent(john, mary).
parent(john, david).
parent(mary, anna).

male(john).
male(david).
female(mary).
female(anna).

% Rules
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% Math operations
sum(X, Y, Z) :- Z is X + Y.
product(X, Y, Z) :- Z is X * Y.
divide(X, Y, Z) :- Y =\= 0, Z is X / Y.
subtract(X, Y, Z) :- Z is X - Y.
power(X, Y, Z) :- Z is X ** Y.
remainder(X, Y, Z) :- Y =\= 0, Z is X mod Y.

% Interactive greeting
start :-
    write('Enter your name: '),
    read(Name),
    write('Hello '),
    write(Name),
    nl.

% Calculator program
calculator :-
    write('Enter first number: '),
    read(A),
    write('Enter second number: '),
    read(B),
    Sum is A + B,
    Diff is A - B,
    Prod is A * B,
    (B =\= 0 -> Div is A / B ; Div = 'undefined'),
    write('Sum: '), write(Sum), nl,
    write('Difference: '), write(Diff), nl,
    write('Product: '), write(Prod), nl,
    write('Division: '), write(Div), nl.

% Simple age checker
check_age :-
    write('Enter your age: '),
    read(Age),
    (Age >= 18 -> write('You are an adult') ; write('You are a minor')),
    nl.

% Area calculations
circle_area(Radius, Area) :- Area is 3.14159 * Radius * Radius.
rectangle_area(Length, Width, Area) :- Area is Length * Width.
square_area(Side, Area) :- Area is Side * Side.

% Is a number even or odd?
is_even(X) :- 0 is X mod 2.
is_odd(X) :- 1 is X mod 2.

% Find maximum of two numbers
max_num(X, Y, X) :- X >= Y.
max_num(X, Y, Y) :- Y > X.

% Find minimum of two numbers
min_num(X, Y, X) :- X =< Y.
min_num(X, Y, Y) :- Y < X.