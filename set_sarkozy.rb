##| live_loop :vinyl_drizzle do
##|   sample :vinyl_hiss , amp: 2, attack: 1, sustain: 10, release: 0.1, rate: -1
##|   sleep 4
##| end

##| ##| live_loop :sarkozy do
##| with_fx :bitcrusher do
##|   ##| sample '/Users/dareosk/code/dareosK/sonic-pi-samples/sarcozy_travail.wav', amp: 2, rate: 0.6, rpitch: 10, rate: -0.5, finish: 0.6
##| end
##| ##|   sleep 3
##| ##| end


##| live_loop :heartbeat, sync: :vinyl_drizzle do
##|   ##| sample :ambi_swoosh, amp: 0.5, lpf: 50
##|   sleep 8
##| end

##| live_loop :vinyl_scratch do
##|   with_fx :ixi_techno do
##|     ##| sample :vinyl_scratch , amp: 0.5, rpitch: nil, attack: 0.1, sustain: 30, release: 0.1
##|     sleep 8
##|   end
##| end

##| live_loop :vinyl_rewind, sync: :vinyl_drizzle do
##|   sleep 4
##|   with_fx :ping_pong do
##|     ##| sample :vinyl_rewind , amp: 1, rpitch: nil, attack: 3, sustain: 10, release: 0.1, lpf: 50
##|   end
##| end

##| ##| live_loop :magic_forest do
##| ##| 2.times do
##| with_fx :ping_pong do
##|   use_synth :kalimba
##|   ##| play rrand(:E9, :E15), amp: rrand(20, 30), release: 3
##|   ##| sleep rrand(0.03, 0.8)
##|   ##| end
##| end
##| ##| end

##| with_fx :reverb, mix: 0.6 do
##|   live_loop :ocean do
##|     ##| s = synth [:bnoise, :cnoise, :gnoise].choose, amp: 0.2, attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1)
##|     ##| control s, pan: rrand(-1, 1), cutoff: rrand(60, 110)
##|     sleep rrand(0.5, 1)
##|   end
##| end

##| live_loop :bar, sync: :vinyl_drizzle do
##|   ##| sample :bass_hit_c, amp: 2, sustain: rrand(10, 20), lpf: 50
##|   sleep [4, 8].choose
##| end


##| live_loop :liberation do
##|   with_fx :krush do
##|     ##| sample '/Users/dareosk/code/dareosK/sonic-pi-samples/la_liberation.wav', rate: 1, amp: 4, lpf: 100
##|   end
##|   sleep 8
##| end

##| live_loop :arbeit, sync: :ocean do
##|   sleep 8
##|   with_fx :gverb do
##|     ##| sample '/Users/dareosk/code/dareosK/sonic-pi-samples/hans_amf.wav', rate: 1, rpitch: nil, amp: 4, lpf: 70
##|   end
##| end
