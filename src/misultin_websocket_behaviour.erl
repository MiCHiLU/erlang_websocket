-module(misultin_websocket_behaviour).

-export([behaviour_info/1]).

behaviour_info(callbacks) ->
  [
    {check, 2},
    {connect, 4}
  ];
behaviour_info(_Other) ->
  undefined.
