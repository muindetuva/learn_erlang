-module(functions).

-export([add/2, add/1]).

%% -compile(export_all). % exports all functions

add(Var1) ->
    X = 2,
    Var1 + X.

add(Var1, Var2) -> 
    Var1 + Var2.
