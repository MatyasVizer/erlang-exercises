%% @author matyasvizer

-module(quadratic).
-export([real_roots/3]).

real_roots(A, B, C) ->
    Disc = B*B - 4 * A * C,
    if (Disc == 0) ->
        io:format("~p~n", [{-B / (A * 2)}]);
            true ->
                if (Disc > 0) ->
                    DiscSqrt = math:sqrt(Disc),
                    io:format("~p, ~p~n",[{(-B + DiscSqrt) / (A * 2)}, {(-B - DiscSqrt) / (A * 2)}]);
                        true ->
                        DiscSqrt = math:square(-Disc),
                        io:format("x1 = (~p,~p~n)~nx2 = (~p,~p~n)", [{-0.5 * B / A}, {0.5 * DiscSqrt / A}, {-0.5 * B / A}, {-0.5 * DiscSqrt/A}])
                end
    end.

