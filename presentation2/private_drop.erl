-module(private_drop).
-export([fall_velocity/1]).

%% Our public function
fall_velocity({Planet, Distance}) -> fall_velocity(Planet, Distance).


%% This will be our private functions
fall_velocity(earth, Distance) -> math:sqrt(2 * 9.8 * Distance);

fall_velocity(moon, Distance) -> math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) -> math:sqrt(2 * 3.71 * Distance).

