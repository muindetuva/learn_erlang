%% @author Alfred Tuva <muindetuva@gmail.com> [https://muindetuva.com]
%% @doc Functions calculating velocities of objects dropped in vacuum 
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do">
%% Introducing Erlang</a>, 
%% O'Reilly Media, Inc, 2017.
%% @copyright 2022 by Alfred Muinde
%% @version 0.1

-module(drop).
-export([fall_velocity/1]).

%% @doc Calculates the velocity  of an object falling on Earth as if it were
%% in a vacuum. The distance is the height from which the object is dropped 
%% from specified in meters, and the function returns a velocity in meters per
%% second

-spec(fall_velocity(number()) -> number()).

fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).
