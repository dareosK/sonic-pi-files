# DRONES
live_loop :drone1 do
  note = 95
  with_fx :ixi_techno, phase: 0.5,res: 0.5, amp: 2,mix: 0.8 do |i|
    synth :fm,note: hz_to_midi(note)  ,release: 20
    synth :fm,note: hz_to_midi(note + 2)  ,release: 20
    sleep 8
  end
end

live_loop :drone2_str do
  with_fx :echo do
    sample :ambi_drone, rate: 0.5, amp: 2, lpf: 50
    sleep 2
  end
end

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


# RAIN / WATER
