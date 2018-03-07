cd /Users/clairemckinnon/Documents/WinterQuarter2018/MathMethodsII/FinalProject/matlab_correlation_matrices/

load('brendan_style_motifs.mat')
load('Null_1_motifs.mat')
load('STDD1_motifs.mat')
load('STDP1_motifs.mat')
load('Null_2_motifs.mat')
load('STDD2_motifs.mat')
load('STDP2_motifs.mat')

%% 1. Within Netowrk (all motifs){brendan, Null 1, Null 2}

% % Brendan % % 
figure; hold on
g=[ones(size(CNET_fanIn_brendan)); 2*ones(size(CNET_fanOut_brendan)); 3*ones(size(CNET_cycle_brendan)); 4*ones(size(CNET_middleMan_brendan))]; 
boxplot([CNET_fanIn_brendan;CNET_fanOut_brendan; CNET_cycle_brendan; CNET_middleMan_brendan],g,'Colors',['k' 'r' 'b' 'g']);
set(gca,'FontSize',14)

title('Motif Prevalence in Brendan % MacLean style Network');
ylabel('Within Network Clustering Coefficent');

xticks([1 2 3 4])
xticklabels({'Fan-In','Fan-Out','Cycle','MiddleMan'})

% % Null 1 % %

figure; hold on
g=[ones(size(CNET_fanIn_null1)); 2*ones(size(CNET_fanOut_null1)); 3*ones(size(CNET_cycle_null1)); 4*ones(size(CNET_middleMan_null1))]; 
boxplot([CNET_fanIn_null1;CNET_fanOut_null1; CNET_cycle_null1; CNET_middleMan_null1],g,'Colors',['k' 'r' 'b' 'g']);
set(gca,'FontSize',14)

title('Motif Prevalence in Null 1 Network');
ylabel('Within Network Clustering Coefficent');

xticks([1 2 3 4])
xticklabels({'Fan-In','Fan-Out','Cycle','MiddleMan'})

% % Null 2 % %
figure; hold on
g=[ones(size(CNET_fanIn_Null2)); 2*ones(size(CNET_fanOut_Null2)); 3*ones(size(CNET_cycle_Null2)); 4*ones(size(CNET_middleMan_Null2))]; 
boxplot([CNET_fanIn_Null2;CNET_fanOut_Null2; CNET_cycle_Null2; CNET_middleMan_Null2],g,'Colors',['k' 'r' 'b' 'g']);
set(gca,'FontSize',14)

title('Motif Prevalence in Null 2 Network');
ylabel('Within Network Clustering Coefficent');

xticks([1 2 3 4])
xticklabels({'Fan-In','Fan-Out','Cycle','MiddleMan'})

%% 2. Between Netowrks for particular motif (fan-in): condition 1 {STDP 1, STDD 1 Null 1}

% % Fan In % %
figure; hold on
g=[ones(size(C_fanIn_STDP1)); 2*ones(size(C_fanIn_STDD1)); 3*ones(size(C_fanIn_null1))]; 
boxplot([CNET_fanIn_STDP1;C_fanIn_STDD1; C_fanIn_null1],g,'Colors',['k' 'r' 'b']);
set(gca,'FontSize',14)

title('Fan-In Motif Prevalence');
ylabel('Between Network Clustering Coefficent');

xticks([1 2 3])
xticklabels({'Fan-In STDP 1','Fan-In STDD 1','Fan-In Null 1'})

% % Fan Out % %

figure; hold on
g=[ones(size(C_fanOut_STDP1)); 2*ones(size(C_fanOut_STDD1)); 3*ones(size(C_fanOut_null1))]; 
boxplot([CNET_fanOut_STDP1;C_fanOut_STDD1; C_fanOut_null1],g,'Colors',['k' 'r' 'b']);
set(gca,'FontSize',14)

title('Fan-Out Motif Prevalence');
ylabel('Between Network Clustering Coefficent');

xticks([1 2 3])
xticklabels({'Fan-Out STDP 1','Fan-Out STDD 1','Fan-Out Null 1'})

% % Cycle % % 
figure; hold on
g=[ones(size(C_cycle_STDP1)); 2*ones(size(C_cycle_STDD1)); 3*ones(size(C_cycle_null1))]; 
boxplot([CNET_cycle_STDP1;C_cycle_STDD1; C_cycle_null1],g,'Colors',['k' 'r' 'b']);
set(gca,'FontSize',14)

title('Cycle Motif Prevalence');
ylabel('Between Network Clustering Coefficent');

xticks([1 2 3])
xticklabels({'Cycle STDP 1','Cycle STDD 1','Cycle Null 1'})

% % MiddleMan % %
figure; hold on
g=[ones(size(C_middleMan_STDP1)); 2*ones(size(C_middleMan_STDD1)); 3*ones(size(C_middleMan_null1))]; 
boxplot([CNET_middleMan_STDP1;C_middleMan_STDD1; C_middleMan_null1],g,'Colors',['k' 'r' 'b']);
set(gca,'FontSize',14)

title('Middle Man Motif Prevalence');
ylabel('Between Network Clustering Coefficent');

xticks([1 2 3])
xticklabels({'middleMan STDP 1','middleMan STDD 1','middleMan Null 1'})



