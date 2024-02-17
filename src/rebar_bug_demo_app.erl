%%%-------------------------------------------------------------------
%% @doc rebar_bug_demo public API
%% @end
%%%-------------------------------------------------------------------

-module(rebar_bug_demo_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    rebar_bug_demo_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
