%% @author matyasvizer

-module(mathematics).
-export([pi/0]).

pi() ->
    MinListTl = lists:seq(-3, -10000, -4),
    PlusListTl = lists:seq(5, 10000, 4),
    AppListTl = lists:append(MinListTl,PlusListTl),
    RecListTL = [ 1/N || N <- AppListTl],
    ListHd = 1,
    ListApp = [ListHd|RecListTL],
    FinalSum = lists:sum(ListApp) * 4,
    io:format("~p~n", [FinalSum]).



