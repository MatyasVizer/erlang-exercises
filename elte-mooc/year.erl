%% @author matyasvizer

-module(year).
-export([days/0]).


days() ->
    ListOfAllMonths = [january, february, march, april, may, june, july, august, september, october, november, december],
    ListOfDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],

    [ {Months, Days} || {Months, MaxOfDays} <- lists:zip(ListOfAllMonths, ListOfDays), Days <- lists:seq(1, MaxOfDays)].





