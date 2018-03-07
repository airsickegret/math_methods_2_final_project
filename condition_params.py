# Parameters for Simulation runs:

################################################################################################
# 1. NULL_CONDITION (no conductance changes, no omega:
################################################################################################

from brian2 import *

# import plotutils as pu

seed(11922)  # to get identical figures for repeated runs

# Model parameters
### General parameters
duration = 2.0*second  # Total simulation time
sim_dt = 0.1*ms        # Integrator/sampling step
N_e = 1000             # Number of excitatory neurons
N_i = 200              # Number of inhibitory neurons

### Neuron parameters
E_l = -65*mV           # Leak reversal potential
g_l = 0.2*nS           # Leak conductance.    Brendan's number was .20 mS (may be a typo from nS) (original was 9.99 nS)
E_e = 0*mV             # Excitatory synaptic reversal potential
E_i = -90*mV           # Inhibitory synaptic reversal potential
C_m = 198*pF           # Membrane capacitance
tau_e = 10*ms           # Excitatory synaptic time constant
tau_i = 5*ms          # Inhibitory synaptic time constant
tau_r = 1*ms           # Refractory period
V_th = -48*mV          # Firing threshold
V_r = -70*mV              # Reset potential
g_t = g_l              # added to replicate Brendan's model of tonic depression
E_t = E_e              # added to replicate Brendan's model of tonic depression


################################################################################################
# 1. Brendan_Style
################################################################################################

w_e = 0.00*nS          # Excitatory synaptic conductance
w_i = 0.0*nS           # Inhibitory synaptic conductance
U_0 = 0.0             # Synaptic release probability at rest
Omega_d = 0.0/second   # Synaptic depression rate
Omega_f = 0.0/second  # Synaptic facilitation rate

################################################################################################
# 2. Flakey_STDP1
################################################################################################

w_e = 0.05*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 2.0/second   # Synaptic depression rate
Omega_f = 6.66/second  # Synaptic facilitation rate

################################################################################################
# 3. Flakey_STDD1
################################################################################################

w_e = 0.05*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 4.0/second   # Synaptic depression rate
Omega_f = 3.33/second  # Synaptic facilitation rate

################################################################################################
# 4. Flakey_null_straw1
################################################################################################

w_e = 0.05*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 2.0/second   # Synaptic depression rate
Omega_f = 3.33/second  # Synaptic facilitation rate


################################################################################################
# 5. Reliable_STDP2
################################################################################################

w_e = 0.1*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 2.0/second   # Synaptic depression rate
Omega_f = 6.66/second  # Synaptic facilitation rate

################################################################################################
# 6. Reliable_STDD2
################################################################################################

w_e = 0.1*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 4.0/second   # Synaptic depression rate
Omega_f = 3.33/second  # Synaptic facilitation rate

################################################################################################
# 7. Reliable_null_straw2
################################################################################################

w_e = 0.1*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 2.0/second   # Synaptic depression rate
Omega_f = 3.33/second  # Synaptic facilitation rate

################################################################################################
# 8. Epilepsy
################################################################################################

w_e = 1.0*nS          # Excitatory synaptic conductance
w_i = 1.0*nS           # Inhibitory synaptic conductance
U_0 = 0.6             # Synaptic release probability at rest
Omega_d = 2.0/second   # Synaptic depression rate
Omega_f = 3.33/second  # Synaptic facilitation rate

################################################################################################
# 9. near_critical
################################################################################################

