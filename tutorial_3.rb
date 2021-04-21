##| live_loop :randomised_melody do
##|   use_synth :piano
##|   play chord(rrand(:E1, :E2), :minor), amp: rrand(0.1, 0.8), pan: rrand(-1, 1), attack: 0.2, release: 0.8
##|   sleep 0.25
##| end

##| live_loop :melody_1 do
##|   use_synth :dark_ambience
##|   play 45, amp: 0.05
##|   sleep 0.5
##|   sample :elec_bell, amp: 0.1
##|   sleep 0.5
##|   play 57, amp: 0.15
##|   sleep 0.25
##|   play 32, amp: 0.15
##|   sleep 0.25
##|   play 50, amp: 0.05
##|   sleep 0.5
##|   sample :elec_bell, amp: 0.4
##|   sleep 0.5
##|   play 57, amp: 0.15
##|   sleep 0.25
##| end


##| live_loop :melody_2 do
##|   use_synth :dark_ambience
##|   play 62, amp: 0.4
##|   sleep 1.1
##|   play 60, amp: 0.4
##|   sleep 0.5
##|   play 62, amp: 0.4
##|   sleep 1.1
##|   play 61, amp: 0.4
##|   sleep 0.5
##|   play 59, amp: 0.4
##|   sleep 0.5
##|   play 59, amp: 0.4
##|   sleep 0.5
##| end





##| live_loop :metronome do
##|   use_synth :prophet

##|   sleep 1.259
##| end
