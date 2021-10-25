live_loop :full_beat do
  sample :bass_hit_c, amp: 2, sustain: rrand(10, 20), lpf: 50
  sleep 1
end

live_loop :quarter_beat, sync: :full_beat do
  sample :bass_hit_c, amp: 0.5, sustain: rrand(10, 20), lpf: rrand(50, 80)
  sleep 0.125
end
______________________________
a = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1]

live_loop :its_its do
  16.times do |i|
    puts i
    with_fx :echo, phase: 1 do
      sample :ambi_piano, release: 0.1, amp: 0.25, lpf: nil if a[i] == 1
      sleep 0.25
    end
  end
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
