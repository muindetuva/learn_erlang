-module(drop).
-export([fall_velocity/2]).

fall_velocity(earth, Distance) ->
    math:sqrt(2 * 9.9 * Distance);

fall_velocity(moon, Distance) ->
    math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) ->
    math:sqrt(2 * 3.71 * Distance).
