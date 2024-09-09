-module(main). % Define the module
-export([start/0]). % Export the start function

% Start function to prompt user and initiate beeping
start() ->
    io:format("Enter the number of beeps:"),
    {ok, [Beeps]} = io:fread("", "~d"), % Read and parse input as an integer
    beep(Beeps, 1). % Start the beep loop

% Recursive function to beep the specified number of times
beep(0, _) -> ok;
beep(N, I) ->
    io:format("\aBeep number: ~p~n", [I]), % Output a beep sound and display the current beep number
    timer:sleep(1000), % Wait for 1 second before the next beep
    beep(N-1, I+1). % Recursive call with decremented beep count and incremented beep number
