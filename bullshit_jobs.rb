liberation = '/Users/dareosk/code/dareosK/sonic-pi-samples/la_liberation.wav'
sarcocloco = '/Users/dareosk/code/dareosK/sonic-pi-samples/sarcozy_travail.wav'
arbeit = '/Users/dareosk/code/dareosK/sonic-pi-samples/hans_amf.wav'

##| █▀▄ ▄▀█ █▀█ █▀▀ █▀█ █▀   █▄▀ █░█ ▄▀█ █░░ █ █░░ █
##| █▄▀ █▀█ █▀▄ ██▄ █▄█ ▄█   █░█ █▀█ █▀█ █▄▄ █ █▄▄ █


##| ██████╗░██╗░░░██╗██╗░░░░░██╗░░░░░░██████╗██╗░░██╗██╗████████╗  ░░░░░██╗░█████╗░██████╗░░██████╗██╗
##| ██╔══██╗██║░░░██║██║░░░░░██║░░░░░██╔════╝██║░░██║██║╚══██╔══╝  ░░░░░██║██╔══██╗██╔══██╗██╔════╝╚═╝
##| ██████╦╝██║░░░██║██║░░░░░██║░░░░░╚█████╗░███████║██║░░░██║░░░  ░░░░░██║██║░░██║██████╦╝╚█████╗░░░░
##| ██╔══██╗██║░░░██║██║░░░░░██║░░░░░░╚═══██╗██╔══██║██║░░░██║░░░  ██╗░░██║██║░░██║██╔══██╗░╚═══██╗░░░
##| ██████╦╝╚██████╔╝███████╗███████╗██████╔╝██║░░██║██║░░░██║░░░  ╚█████╔╝╚█████╔╝██████╦╝██████╔╝██╗
##| ╚═════╝░░╚═════╝░╚══════╝╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░░╚═╝░░░  ░╚════╝░░╚════╝░╚═════╝░╚═════╝░╚═╝
##|                                          █▀█ █▄░█   █▀▀ █▀█ █▀▀ █▀▀   █▀▄▀█ ▄▀█ █▀█ █▄▀ █▀▀ ▀█▀ █▀
##|                                          █▄█ █░▀█   █▀░ █▀▄ ██▄ ██▄   █░▀░█ █▀█ █▀▄ █░█ ██▄ ░█░ ▄█


live_loop :low do
  use_synth nil
  play :e2, release: 10, phase: 0.1 amp: 1
  sleep 4
end


live_loop :sorry_lads_just_go_with_it do
  with_fx [:gverb, :bitcrusher].choose do
    use_synth [:blade, :cnoise].choose
    ns = (scale :e2, :minor_pentatonic, num_octaves: 3)
    [4, 8, 16].choose.times do
      ##| play 20, release: 0.1, rpitch: rrand(3, 100), hpf: nil, rpitch: rrand(1, 100), amp: 1
      sleep 0.1
    end
  end
end
