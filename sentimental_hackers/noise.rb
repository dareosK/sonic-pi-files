live_loop :embrace_the_noise do
  with_fx [:gverb, :bitcrusher].choose do
    use_synth [:blade, :cnoise].choose
    use_random_seed [8, 51, 24, 68].tick
    ns = (scale :e2, :phrygian, num_octaves: 3)
    [4, 8, 16].choose.times do
      play 20, release: 0.1, hpf: nil, rpitch: rrand(1, 100), amp: 3
      sleep 0.1
    end
  end
end
______________________________
