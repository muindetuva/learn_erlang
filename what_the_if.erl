-module(what_the_if).
-export([heh_fine/0, oh_god/1, help_me/1, insert/2]).

heh_fine() ->
    if 1 =:= 1 -> 
           works
    end,
    if 1 =:= 2; 1 =:= 1 -> 
           works
    end,
    if 1=:= 2, 1 =:= 1 -> 
           fails
    end.

oh_god(N) ->
    if N =:= 2 ->
           might_succeed;
    true ->
           always_does
    end.

help_me(Animal) ->
    Talk = if Animal == cat ->
                        "meow";
                Animal == cow ->
                        "mooo";
                Animal == dog -> 
                            "bark";
                true ->
                    "fagadsfadsfad"
                end,
    {Animal, "says " ++ Talk ++ "!"}.


insert(X, []) -> 
    [X];
insert(X, Set) ->
    case lists:member(X, Set) of 
        true -> Set;
        false -> [X|Set]
    end.
