live_loop :magic_forest do
  2.times do
    with_fx :ping_pong do
      use_synth :kalimba
      play rrand(:E9, :E15), amp: rrand(20, 30), release: 3
      sleep rrand(0.025, 0.25)
    end
  end
end
