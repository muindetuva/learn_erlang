-module(case_drop).
-export([fall_velocity/2]).




fall_velocity(Planet, Distance) when Distance >= 0 -> 
    case Planet of
        earth -> math:sqrt(2 * 9.8 * Distance);
        moon -> math:sqrt(2 * 1.6 * Distance);
        mars -> math:sqrt(2 * 3.71 * Distance)
    end.
%% You can use '_' for a match all case but it should always be last
