# Welcome to Sonic Pi

##| ##| ##| when you don't talk about time, everything happens simultaneously
##| ##| play 30
##| ##| play 75

##| 3.times do
##|   ##| play number defines pitch
##|   play 30, amp: 30
##|   ##| sleep defines tempo
##|   sleep 0.25
##| end

##| ##| release elongates the fade out time of a note, cuttoff restricts the wavelength
##| use_synth :prophet
##| play :e1 + 5 + 5 + 5 + 12, release: 20

##| ##| Melody
##| 2.times do
##|   use_synth :prophet
##|   play 60
##|   sleep 0.25
##|   play 72
##|   sleep 1.6
##|   play 60
##|   sleep 0.25
##|   play 72
##| end

##| 1.times do
##|   play 100
##|   sleep 2.10
##| end

##| Sample
##| rate sets the speed
##| sample :loop_3d_printer
##| sample :loop_amen_full, rate: 0.5
##| sample :loop_amen_full, rate: 1.2

##| Chop a sample
##| onset treats the loop as an array of beats
##| sample :loop_amen_full, rate: 1.2, onset: 2-4-1-3

##| loop do
##|   sample :loop_amen_full, rate: 1.2, onset: 2-4-1-3
##|   sleep 0.2
##| end

##| Drums
##| live_loops allow you to thread loops
##| pick is like Array.rand
##| live_loop :drums do
##|   sample :glitch_bass_g, rate: 0.7, onset: pick, sustain: 0, release: 0.5
##|   sleep 0.125
##| end

##| ##| Bassline
##| ##| rrand is like .rand
##| ##| octs uses an octave(?), not sure about tick
##| live_loop :bassline do
##|   ##| synth :tb303, note: (octs :d1, 3).tick, release: rrand(0, 0.5), cutoff: rrand(50, 100)
##|   sleep 0.2
##| end

##| Add reverd
##| room is room size, 1 is the highest value
with_fx :reverb, room: 1 do
  
  live_loop :lyceum do
    play (scale :e1, :major_pentatonic).choose, release: 0.1
    sleep 0.21
  end
end


