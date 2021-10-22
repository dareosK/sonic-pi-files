live_loop :heartbeat do
  sample :ambi_swoosh, amp: 0.5, lpf: 60, rpitch: -3
  sleep 0.75
end
