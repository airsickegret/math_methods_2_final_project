%% Clustering Motifs
clearvars

%% read in the weight matrix from data file based on which network model

% filename = 'brendan_style_correlation_matrix.mat'; %Brendan style
% filename = 'Flakey_null_straw1_correlation_matrix.mat'; % unreliable null
% filename = 'Flakey_STDD1_correlation_matrix.mat'; %unreliable STDD1
% filename = 'Flakey_STDP1_correlation_matrix.mat'; % unreliable STDP1
% filename = 'Reliable_null_straw2_correlation_matrix.mat'; % reliable null
% filename = 'Reliable_STDD2_correlation_matrix.mat'; % reliable STDD2
filename = 'Reliable_STDP2_correlation_matrix.mat'; % reliable STDP2

W = load(filename);
W = W.lagcorr;
W(W<0)=0;
W=W.^(1/3); 
WT=W';

one_vec=ones(length(W),1);

%% Motifs

%loop through all cells
for ii = 1:length(W)

 
% define equations for d_in
d_in=WT(ii,:)*one_vec;

% define equation for d_out
d_out=W(ii,:)*one_vec;

% define equation for d_bidirected
Wsq=W^2;
d_bidirected=Wsq(ii,ii);

% define equation to count each cluster type
maxN_fanIn = d_in*(d_in - 1);
maxN_cycle = d_in*d_out - d_bidirected;
maxN_fanOut = d_out*(d_out - 1);
maxN_middleMan = d_in*d_out - d_bidirected;

% define equation for each cluster type, in which neuron ?i? participates
N_fanIn = W'*W^2;
N_cycle = W^3;
N_fanOut = (W^2)*W';
N_middleMan = W*W'*W;
N_all = (W+W')^3/2; 

% define equation to get clustering coefficients for each cluster type (defined for Weighted Directed Network)
% used to compare relevance of given motif among different networks
C_fanIn(ii,1) = N_fanIn(ii,ii)./maxN_fanIn;
C_cycle(ii,1) = N_cycle(ii,ii)./maxN_cycle;
C_fanOut(ii,1) = N_fanOut(ii,ii)./maxN_fanOut;
C_middleMan(ii,1) = N_middleMan(ii,ii)./maxN_middleMan;

% coefficients for performing within network comparisons
CNET_fanIn(ii,1) = N_fanIn(ii,ii)/N_all(ii,ii);
CNET_cycle(ii,1) = N_cycle(ii,ii)/N_all(ii,ii);
CNET_fanOut(ii,1) = N_fanOut(ii,ii)/N_all(ii,ii);
CNET_middleMan(ii,1) = N_middleMan(ii,ii)/N_all(ii,ii);

end

%get rid of NaNs
C_cycle(isnan(C_cycle))=0;
C_fanIn(isnan(C_fanIn))=0;
C_fanOut(isnan(C_fanOut))=0;
C_middleMan(isnan(C_middleMan))=0;

%get rid of NaNs
CNET_cycle(isnan(CNET_cycle))=0;
CNET_fanIn(isnan(CNET_fanIn))=0;
CNET_fanOut(isnan(CNET_fanOut))=0;
CNET_middleMan(isnan(CNET_middleMan))=0;

%% save btween and within network coefficients as different name for each condition!
% Betweeen Network Coefficients
C_cycle_STDP2=C_cycle;
C_fanIn_STDP2=C_fanIn;
C_fanOut_STDP2=C_fanOut;
C_middleMan_STDP2=C_middleMan;

% Within Netowrk Coefficients
CNET_cycle_STDP2=CNET_cycle;
CNET_fanIn_STDP2=CNET_fanIn;
CNET_fanOut_STDP2=CNET_fanOut;
CNET_middleMan_STDP2=CNET_middleMan;


save('brendan_style_motifs.mat','C_cycle_brendan','C_fanIn_brendan','C_fanOut_brendan','CNET_middleMan_brendan','CNET_cycle_brendan','CNET_fanIn_brendan','CNET_fanOut_brendan','CNET_middleMan_brendan')
save('Null_1_motifs.mat','C_cycle_null1','C_fanIn_null1','C_fanOut_null1','C_middleMan_null1','CNET_cycle_null1','CNET_fanIn_null1','CNET_fanOut_null1','CNET_middleMan_null1')
save('STDD1_motifs.mat','C_cycle_STDD1','C_fanIn_STDD1','C_fanOut_STDD1','C_middleMan_STDD1','CNET_cycle_STDD1','CNET_fanIn_STDD1','CNET_fanOut_STDD1','CNET_middleMan_STDD1')
save('STDP1_motifs.mat','C_cycle_STDP1','C_fanIn_STDP1','C_fanOut_STDP1','C_middleMan_STDP1','CNET_cycle_STDP1','CNET_fanIn_STDP1','CNET_fanOut_STDP1','CNET_middleMan_STDP1')
save('Null_2_motifs.mat','C_cycle_Null2','C_fanIn_Null2','C_fanOut_Null2','C_middleMan_Null2','CNET_cycle_Null2','CNET_fanIn_Null2','CNET_fanOut_Null2','CNET_middleMan_Null2')
save('STDD2_motifs.mat','C_cycle_STDD2','C_fanIn_STDD2','C_fanOut_STDD2','C_middleMan_STDD2','CNET_cycle_STDD2','CNET_fanIn_STDD2','CNET_fanOut_STDD2','CNET_middleMan_STDD2')
save('STDP2_motifs.mat','C_cycle_STDP2','C_fanIn_STDP2','C_fanOut_STDP2','C_middleMan_STDP2','CNET_cycle_STDP2','CNET_fanIn_STDP2','CNET_fanOut_STDP2','CNET_middleMan_STDP2')


