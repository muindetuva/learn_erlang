-module(guarded_drop).
-export([fall_velocity/2, print_distance/1, print_distance_10_to_20/1]).


fall_velocity(earth, Distance) when Distance >= 0 -> math:sqrt(2 * 9.8 * Distance);

fall_velocity(moon, Distance) when Distance >= 0 -> math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) when Distance >= 0 -> math:sqrt(2 * 3.71 * Distance).


























print_distance_10_to_20(Distance) when Distance > 10, Distance < 20 
                              -> io:format("Number between 10 and 20").

print_distance(Distance) when Distance > 10; Distance < 20
                              -> io:format("Either greater than 10 or less than 20").
