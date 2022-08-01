-module(greetings).

-export([hello/2]).

hello(man, Name) ->
    io:format('Hello Mr. ~s~n!', [Name]);
hello(female, Name) -> 
    io:format('Hello Mrs. ~s~n!', [Name]).
