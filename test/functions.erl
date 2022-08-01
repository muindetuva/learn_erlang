-module(functions).

-export([add/1, add/2]).


add(Var1) ->
    Var1 = 23.

add(Var1, Var2) -> 
    Var1 + Var2.

