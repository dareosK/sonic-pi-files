live_loop :drone1 do
  notes = (ring 35, 53, 65, 72).tick
  note = 55
  with_fx :ixi_techno, phase: 0.5, res: 0.5, amp: 1, mix: 0.8 do |i|
    synth :fm,note: hz_to_midi(note) , release: 20
    synth :fm,note: hz_to_midi(note + 2), release: 20
    sleep 8
  end
end

______________________________

live_loop :drone2_str do
  with_fx :echo do
    sample :ambi_drone, rate: 0.5, amp: 2, lpf: 50
    sleep 2
  end
end

______________________________

live_loop :room_filler do
  with_fx :panslicer, phase: 1 do
    play 45, release: 70, amp: 2
    sleep 1
  end
end
______________________________

live_loop :drone_melody_1 do
  use_bpm 40
  use_synth :dark_ambience
  play :C3, release: 10, amp: 0.5
  sleep 0.5
  play :D3
  sleep 0.5
  play :E4, amp: 2, release: 11
  sleep 3
end
______________________________

live_loop :ohm do
  sample :ambi_drone, rate: 0.4
  sleep 1.6
end
