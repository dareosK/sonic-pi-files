live_loop :heartbeat do
  sample :ambi_swoosh, amp: 4, lpf: 40, rpitch: -3
  sleep 0.75
end
