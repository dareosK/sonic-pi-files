live_loop :magic_forest do
  2.times do
    with_fx :ping_pong do
      use_synth :kalimba
      play rrand(:E9, :E15), amp: rrand(20, 30), release: 3
      sleep rrand(0.025, 0.25)
    end
  end
end

with_fx :reverb, mix: 0.6 do
  live_loop :ocean do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.2, 1), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 110)
    sleep rrand(0.5, 1)
  end
end
