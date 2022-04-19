-module(primes).
-export([is_prime/1]).

is_prime(X) ->
    is_prime(X, 2, erlang:trunc(math:sqrt(X)) + 1).

is_prime(_, MaxVal, MaxVal) ->
    true;
is_prime(X, Iterator, MaxVal) ->
    if 
	X rem Iterator =:= 0 ->
	    false;
	true ->
	    is_prime(X, Iterator + 1, MaxVal)
    end.