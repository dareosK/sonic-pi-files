live_loop :foo do
  use_bpm 25
  ##| with_fx :ping_pong do
  ##|   ##| sample :guit_harmonics, rate: 2, hpf: 50, amp: 3
  ##|   sleep 2
  ##| end
  with_fx :reverb, room: 1 do
    use_synth :kalimba
    play rrand(:E9, :E15), amp: 14
    sleep rrand(0.001, 0.005)
    sleep 1
  end
end
##| define :magic_forest do
##|   with_fx :reverb, room: 1 do
##|     use_synth :kalimba
##|     play rrand(:E9, :E15), amp: 14
##|     sleep rrand(0.005, 0.15)
##|   end
##| end

live_loop :bar, sync: :foo do
  ##| sample :ambi_swoosh, amp: 1, hpf: 50
  sleep 1
end

live_loop :sauna, sync: :foo do
  ##| sample :ambi_sauna, amp: 0.25, rate: -1
  sleep rrand(0.25, 3)
end


live_loop :drone, sync: :foo do
  with_fx :bitcrusher do
    ##| sample :ambi_drone, amp: 0.2, rate: -1, rpitch: 3, beat_stretch: 4
    sleep 2
  end
end

live_loop :space_laser_reverb, sync: :foo do
  with_fx :ping_pong do
    ##| sample :bass_woodsy_c, rate: -1, rpitch: 0, amp: 0.25
    sleep 2
  end
end

live_loop :hit_c, sync: :foo do
  with_fx :ixi_techno do
    ##| sample :bass_hit_c, amp: 3, beat_stretch: 3, rate: -1, rpitch: 0
    sleep 0.25
  end
end

live_loop :liquid_c, sync: :foo do
  ##| sample :bass_hit_c, amp: 3
  sleep 0.5
end

live_loop :space_plonk, sync: :foo do
  15.times do
    ##| sample :bass_voxy_hit_c, amp: 1, rate: -1, rpitch: 3, lpf: 80
    sleep 0.25
  end
  sleep 10
end
