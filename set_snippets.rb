# DRONES
live_loop :drone1 do
  note = 95
  with_fx :ixi_techno, phase: 0.5,res: 0.5, amp: 2,mix: 0.8 do |i|
    synth :fm,note: hz_to_midi(note)  ,release: 20
    synth :fm,note: hz_to_midi(note + 2)  ,release: 20
    sleep 8
  end
end

# RAIN / WATER
