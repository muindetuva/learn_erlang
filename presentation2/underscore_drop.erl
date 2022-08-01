-module(underscore_drop).
-export([fall_velocity/2]).


fall_velocity(moon, Distance) -> math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) -> math:sqrt(2 * 3.71 * Distance);

%% Assume everything else is earth
fall_velocity(_, Distance) -> math:sqrt(2 * 9.8 * Distance).

