# math_methods_2_final_project


**Project Proposal:** Modeling Plasticity in Neuronal Networks Using the BRIAN™ Brain Simulator

(Copyright © 2018 The Brian spiking neural network simulator - All Rights Reserved)

Team Members: **Claire McKinnon, Caleb Sponheim, Zaina Zayyad, Yuqing Zhu**

**1. The background: summary and references to the papers relevant for your project**

Based on our project from the previous quarter (Chambers &amp; MacLean, 2016), we pinpointed several aspects of the paper that we would have wanted to explore further. The paper combined simulation and _ex-vivo_ methods to evaluate neural network connectivity motifs. It provided evidence for basic characteristics of physiological networks based on their physical limitations and reliability. We developed a number of questions based on the results of the paper. One of these was whether the network model would display different dynamics if the network - like the cortex - was intrinsically plastic. Using a combination of synaptic plasticity modelling (Tsodyks, 2005) in a network of neurons with conductance-based synapses (Brunel, 2000), we hope to extend the Chambers &amp; Maclean original model (Chambers &amp; MacLean, 2015).

**2. The specific aims of what you want to accomplish in your research project. This should include some flexibility: maybe some aspirational aims, or two different potential pathways for the project (e.g. Plan A and Plan B)**

Our goal is to use the same simulator, the Brian Brain simulator (Goodman &amp; Brette, 2009) which the authors of the paper used and implement synaptic plasticity based on Tsodyks&#39; 2005 model, implemented with the COBA model developed by Nicola Brunel (Brunel, 2000). We will use the same subnetwork definitions and parameters that the authors used, and examine the maps of activity in these networks.

First we will attempt to replicate the authors&#39; result of the overrepresentation of the fan-in triangle motif, perhaps on a smaller network. Then, we will implement synaptic plasticity and make comparisons about the activity patterns seen in different subnetworks.

If we are successful in implementing and evaluating the results of synaptic plasticity into the existing model, we will attempt to model intrinsic plasticity as well, based off Christian Hansel&#39;s framework.

**3. The methods and work distribution (e.g. person A will download and clean up the data, person B will write the PCA code, etc.)**

We are all doing interlocking things and currently meeting weekly to group-code, analyze data, and complete writing assignments. For example, we&#39;re all working on this proposal document at the same time.

In general, we expect each team member to contribute to and attempt each aspect of the project. This will be accomplished by either building off each other&#39;s work, or simultaneously completing different versions of the same analysis.

Spiking Neural Network

- --Learn how to install and use Brian Brain Simulator in Python  - (Zaina, Yuqing, Claire, Caleb)
- --Create a spiking neural network similar to the one implemented in Chambers &amp; MacLean (2016)  - (Zaina, Yuqing, Claire, Caleb)
- --Export the output from 2s experiments of spiking neural network output (Zaina, Yuqing, Claire, Caleb)

Model building

- --implementation of synaptic plasticity (Zaina, Yuqing, Claire, Caleb)
- --add intrinsic plasticity (Zaina, Yuqing, Claire, Caleb)

Data analysis

        Data Validation

- --Asynchrony -Zaina
- --Irregularity - Caleb
- --Branching coefficient (measure of near-critical dynamics) - Yuqing
- --Firing rate (1.3Hz i.e. sparse)-Claire
- --High conductance state -Claire

        Graph Analysis

- --_create graph_ with weights from each neuron to each other neuron - Yuqing
- --create code to identify the graph of the active subnetwork - Zaina
- -- **create code** to identify the graph of the functional subnetwork - Caleb
- -- **create code** to identify the graph of the recruitment subnetwork - Claire
- -- **create code** to count motifs of from the subnetworks - Zaina, Yuqing, Claire, Caleb

Data viz (CALEB and caleb in lowercase and _caleb in italics_ and **caleb in BOLD**  **AND REALLY FANCY CALEB**  **A**** ND **** cO ****MIC**** sA ****NS**** cAL ****EB** )

- --Rasters

- --PSTHs
- --Replicating graphs from brendan&#39;s paper
- --Viz of model
- --Graphical demonstration of plasticity

Writing up

- --commenting code - (Zaina, Yuqing, Claire, Caleb)
- --final writeup - (Zaina, Yuqing, Claire, Caleb)
- --presentation - (Zaina, Yuqing, Claire, Caleb)

**References/preliminary reading list**

Goodman DF and Brette R (2009). The Brian simulator. Front Neurosci doi:10.3389/neuro.01.026.2009

Chambers, B., &amp; MacLean, J. N. (2016). Higher-order synaptic interactions coordinate dynamics in recurrent networks. PLoS computational biology, 12(8), e1005078.

Chambers, B., &amp; MacLean, J. N. (2015). Multineuronal activity patterns identify selective synaptic connections under realistic experimental constraints. Journal of Neurophysiology, 114(3), 1837-1849. http://www.physiology.org/doi/pdf/10.1152/jn.00429.2015

Brunel, N. (2000). Dynamics of Sparsely Connected Networks of Excitatory and Inhibitory Spiking Neurons. Journal of Computational Neuroscience 8, 183–208

-https://web.stanford.edu/group/brainsinsilicon/documents/BrunelSparselyConnectedNets.pdf

Tsodyks, M. (2005). Attractor Neural Networks and Spatial Maps in Hippocampus. Cell Neuron, 48(2):168-9

-http://www.sciencedirect.com/science/article/pii/S0896627305008299?via%3Dihub