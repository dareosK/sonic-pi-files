live_loop :lynch_noise_fm do
  use_synth :fm
  use_synth_defaults divisor: 1, depth: 1, attack: 2, sustain: 8, release: 2
  with_fx :reverb, room: 0.75 do
    with_fx :echo, phase: (ring 0.25, 0.5, 1, 2).choose, decay: 6 do
      n = play :a1
      control n, divisor: 10, divisor_slide: (ring 2,4,8).choose, depth: 4, depth_slide: (ring 2,4,8).choose
      # a bit crispy noise as well
      use_synth :supersaw
      use_synth_defaults amp: 0.075, sustain: 8
      play :a0
    end
  end
  sleep (ring 4,8).choose
end
