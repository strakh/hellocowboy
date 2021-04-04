-module(long_handler).
-behavior(cowboy_loop).

-export([init/2]).
-export([info/3]).

init(Req, State) ->
	io:format("~s", [pid_to_list(self())]),
	{cowboy_loop, Req, State, hibernate}.

info(_Info, Req0, State) ->
	Req = cowboy_req:reply(200,
		#{<<"content-type">> => <<"text/plain">>},
		<<"Hello Looped Cowboy!">>,
		Req0),

	{ok, Req, State, hibernate}.
