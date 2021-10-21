melody = [:G3, :D4, :G4, :D4, :Bb4, :D4, :G4, :D4]

live_loop :melody_graeber do
  use_synth :noise
  use_synth :dark_ambience
  ##| use_synth :piano
  with_fx :lpf do
    with_fx :ping_pong do
      use_bpm 150
      ##| Use_bpm 50
      2.times do
        play_pattern melody, sustain: 1.2, amp: 0.25, rpitch: rrand(1,100), pan: rrand(-1, 1)
      end
    end
  end
end
______________________________
