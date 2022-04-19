%% @author matyasvizer

-module(dominoes).
-export([all/0]).


all() ->
    ListToNine = lists:seq(0, 9),
    ListDom = [{X, Y} || X <- ListToNine, Y <- ListToNine, X >= Y],
    io:format("~p~n", [ListDom]).