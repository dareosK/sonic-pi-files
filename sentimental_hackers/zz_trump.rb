# TRUMP
live_loop :drugs do
  sample drugs, beat_stretch: nil
  sleep 1
end

live_loop :dr1gs, sync: :drugs do
  16.times do
    sample drugs, beat_stretch: 0.5
    sleep 0.5
  end
end

live_loop :dr2gs, sync: :drugs do
  32.times do
    sample drugs, beat_stretch: 0.25
    sleep 0.25
  end
end

live_loop :dr3gs, sync: :drugs do
  62.times do
    sample drugs, beat_stretch: 0.125
    sleep 0.125
  end
end
