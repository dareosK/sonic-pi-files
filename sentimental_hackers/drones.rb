live_loop :drone1 do
  notes = (ring 35, 45, 55, 65, 75, 85, 95).tick
  note = 55
  with_fx :ixi_techno, phase: 0.5, res: 0.5, amp: 1, mix: 0.8 do |i|
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
