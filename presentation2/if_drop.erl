-module(if_drop).
-export([fall_velocity/2]).




fall_velocity(Planet, Distance) when Distance >= 0 -> 
    Gravity = case Planet of
        earth -> 9.8;
        moon -> 1.6;
        mars -> 3.71
    end, % Comma, because function isn't done yet

    Velocity = math:sqrt(2 * Gravity * Distance),

    if
        Velocity == 0 -> 'stable';
        Velocity < 5 -> 'slow';
        Velocity >= 5, Velocity < 10 -> 'moving';
        Velocity >= 10, Velocity < 20 -> 'fast';
        Velocity >= 20 -> 'speedy'
    end.
