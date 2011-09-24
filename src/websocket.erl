-module(websocket).

-export([handshaker/1]).

-ifdef(TEST).
-compile(export_all).
-endif.

-include("../include/websocket.hrl").

handshaker(HTTPRequestHeaders) ->
  case get_websocket_version(HTTPRequestHeaders) of
    'hixie75' ->
      {hixie75_handshaker, 'hixie75'};
    'hybi00' ->
      {hybi00_handshaker, 'hybi00'};
    'hybi08' ->
      {hybi08_handshaker, 'hybi08'};
    undefined ->
      undefined
  end.

get_websocket_version(HTTPRequestHeaders) ->
  'hybi08'.

hixie75_handshaker(Socket) ->
  ok.

hybi00_handshaker(Socket) ->
  ok.

hybi08_handshaker(Socket) ->
  ok.
