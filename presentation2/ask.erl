-module(ask).
-export([term/0]).

term() -> 
    Input = io:read("What {planet, distance} ? >> "),
    %% Input will contain a tuple {ok, {mars, 20}}
    Term = element(2, Input),
    tuple_drop:fall_velocity(Term).
