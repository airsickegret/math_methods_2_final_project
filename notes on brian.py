# Notes on Brian Brain Sim intrinsic plasticity possibilities

start_scope()

eqs = '''
dv/dt = (I-v)/tau : 1
I : 1
tau : second
'''
G = NeuronGroup(2, eqs, threshold='v>1', reset='v = 0', method='exact')
G.I = [2, 0]
G.tau = [10, 100]*ms

# Comment these two lines out to see what happens without Synapses
S = Synapses(G, G, on_pre='v_post += 0.2')
S.connect(i=0, j=1)

M = StateMonitor(G, 'v', record=True)

run(100*ms)

plot(M.t/ms, M.v[0], label='Neuron 0')
plot(M.t/ms, M.v[1], label='Neuron 1')
xlabel('Time (ms)')
ylabel('v')
legend();

# this code, specifically ''on_pre='v_post += 0.2''' institutes a global effect
# of synapses on the neuron. could we use this variable as a possible intrinsic
# plasticity mechanism? Does it work in conjunction with the regular synaptic
# weights and the dynamic nature of both types of plasticity?


# should we make a github project for this? Probably yes.

# when do you put things in quotes, and when do you not?

# threshold='t>(1+i)*10*ms' creates a spiking threshold of different thresholds for diff neurons

# what are the linspace inputs, and what do they mean again?
