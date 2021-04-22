##| define :magic_forest do
##|   ##| with_fx :reverb, room: 1 do
##|   use_synth :kalimba
##|   play rrand(:E9, :E15), amp: 7
##|   sleep rrand(0.005, 0.15)
##|   ##| end
##| end

##| ##| add fast echo to raise stakes

##| in_thread(name: :looper) do
##|   loop do
##|     magic_forest
##|   end
##| end

##| KICK DRUM
##| define :kick_drum do
##|   use_synth :beep
##|   play 50, attack: 0.3, release: 0.3
##|   sample :drum_bass_hard
##|   play chord(:e2, :minor), release: 0.3, cutoff: rrand(60, 130)
##|   sleep 0.5
##| end

##| in_thread(name: :looper) do
##|   loop do
##|     kick_drum
##|   end
##| end