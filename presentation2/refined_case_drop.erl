-module(refined_case_drop).
-export([fall_velocity/2]).


fall_velocity(Planet, Distance) when Distance >= 0 -> 
    Gravity = case Planet of
        earth -> 9.8;
        moon -> 1.6;
        mars -> 3.71
    end, % Comma, because function isn't done yet

    math:sqrt(2 * Gravity * Distance).
