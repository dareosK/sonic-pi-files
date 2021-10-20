live_loop :vinyl_drizzle do
  sample :vinyl_hiss , amp: 2, attack: 1, sustain: 10, release: 0.1, rate: -1
  ##| with_fx :gverb, damp: 1 do
  ##|   sample :vinyl_hiss , amp: 2, attack: 1, sustain: 10, release: 1, rate: -0.5
    sleep 4
  ##| end
end
