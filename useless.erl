-module(useless).

-export([add/2, hello/0, greet_and_add_two/1, greet/2]).

%% Adds Two numbers
add(A, B) ->
    A + B.

%% Show greetings
%% io:format/1 is the standard function used to output text
hello() ->
    io:format("Hello, world!~n").


%% Uses the two above functions
greet_and_add_two(X) ->
    hello(),
    add(X, 2).


%% Greet based on gender
greet(male, Name) -> 
    io:format('Hello, Mr, ~s!', [Name]);
greet(female, Name) -> 
    io:format('Hello Mrs, ~s!', [Name]);
greet(_, Name) ->
    io:format('Hello, ~s', [Name]).
