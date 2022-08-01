-module(math_example).

-export([absolute/1]).

absolute(Var) when Var < 0 ->
    -Var;
absolute(Var) when Var == 0 ->
    0;
absolute(Var) when Var > 0 ->
    Var.
