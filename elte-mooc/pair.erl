%% @author matyasvizer

-module(pair).
-export([fst/1, snd/1, swap/1]).

fst({A, _}) ->
    A.

snd({_, B}) ->
    B.

swap({A, B}) ->
    {B, A}.
