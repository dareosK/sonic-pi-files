live_loop :quarteP_beat do
  sample :bass_hit_c, amp: 2, sustain: rrand(10, 20), lpf: 50
  sleep 1
end

______________________________

tom = [0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0]
snare = [0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0]
kick = [1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1]

live_loop :beat1 do
  use_bpm 85
  32.times do |i|
    sample :tabla_tun2, release: 0.1 if tom[1] == 1
    sample :sn_generic, release: 0.1 if snare[i] == 1
    sample :bass_hit_c, amp: 4, release: 0.1 if kick[i] == 1
    sleep 0.5
  end
end
_______________________________
