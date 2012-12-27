WebSocket implementation in Erlang
----------------------------------

Tests
-----

First, start the WebSocket server::

  $ make
  $ cd deps/misultin/examples
  $ erl -pa ../ebin
  1> misultin_websocket_example:start(8888).
  {ok,<0.33.0>}

Then, run the test client.::

  $ cd deps/pywebsocket/src
  $ PYTHONPATH=. python example/echo_client.py -r /test -m hello --origin=localhost -s localhost -p 8888 --protocol_version=hixie75
  Send: hello
  Recv: received 'hello'
  $ PYTHONPATH=. python example/echo_client.py -r /test -m hello --origin=localhost -s localhost -p 8888 --protocol_version=hybi00
  Send: hello
  Recv: received 'hello'
  Send close
  Recv ack

Development
-----------

Switch loading module to behaviour module::

  $ make
  $ cd deps/misultin/examples
  $ erl -pa ../ebin -pa ../../../ebin
  1> misultin_websocket_example:start(8888).
  {ok,<0.33.0>}
  2> code:which(misultin).
  "../ebin/misultin.beam"
  3> code:which(misultin_websocket).
  "../../../ebin/misultin_websocket.beam"
