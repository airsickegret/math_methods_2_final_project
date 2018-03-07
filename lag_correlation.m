
%%-------------------------------------------------------------------------------------------------
% Title: lag_corr
% Date Created: 2-11-18
% Date Modified: 2-11-18
% Acknowledgment, Proper Attribution, and Citation: We read Chambers, et al. code (unpublished) for % Chambers, et al. 2017 paper and here replicate their method for calculating lag correlations
% Input: spiketimes, an N x M matrix where N is number of neurons and M is times each neuron spiked
% Output: lagcorr, an N*N matrix of lagged correlations reflecting an adjacency matrix of neurons
%--------------------------------------------------------------------------------------------------

clearvars

%% 1. Load Raster Data
 
data = importfile_nicolas('./python_output/Reliable_STDP2.csv', 1, 1000);
spiketimes = table2array(data(:,:));
% spiketimes = load('model_spike_trains_per_neuron.mat');
 
%% 2. find silent neurons by finding logical < 5hz neurons
% since the data that we're currently working with (our network w/ synaptic
% plasticity) has very few spikes, we?re just going to not exclude any neurons from the analysis at % the moment. If there are zero spikes, then there are zero spikes.
 
for iNeuron = 1:length(spiketimes)
    temp = spiketimes(iNeuron,:);
    temp(isnan(temp)) = [];
    spikes{iNeuron} = temp;
end

 
%% 3. take all neurons that are silent and set each time point to zero.
% for neurons that are not silent, bin at 50ms, and put a one in each bin
% if there are spike(s) in that bin.
duration = 2.0; %time length of the simulation
binsize = 0.050; %time length of the bin
[~, N] = size(spikes);
T = duration/binsize; %this is the number of bins
raster=zeros(N, T);

for iNeuron = 1:N
    spikebins = ceil(spikes{iNeuron}./binsize);
    raster(iNeuron, spikebins) = 1;
end

raster=logical(raster); 

%    edges = min(0:binsize:2000);
%    binned_cell_array = histcounts(spikes(iNeuron),edges);
%    binned_raster = binned_cell_array > 0;
 
% plot the raster
 
%% 3.5 make a zero matrix for four adjacent matrices: ab, Ab, aB, AB
AB = zeros(N,N);
ab = zeros(N,N);
aB = zeros(N,N);
Ab = zeros(N,N);
 
%% 4. for every time bin
% pull out the logicals where:
for f = 1:T-1
    ab(raster(:,f)==0,raster(:,f+1)==0) = ab(raster(:,f)==0,raster(:,f+1)==0)+1;
    % ab = a didn't fire at time f, and b did not fire at time f+1

    % AB = A fired at time f and B fired at time f+1
    AB(raster(:,f)==1,raster(:,f+1)==1) = AB(raster(:,f)==1,raster(:,f+1)==1)+1;

    % Ab = A fired at time f, and b did *not* fire at time f+1
    Ab(raster(:,f)==1,raster(:,f+1)==0) = Ab(raster(:,f)==1,raster(:,f+1)==0)+1;

    % aB = a did *not* fire at time f, and B fired at time f+1
    aB(raster(:,f)==0,raster(:,f+1)==1) = aB(raster(:,f)==0,raster(:,f+1)==1)+1;

    % end for loop here
end
 
%% 5. the lag correlation matrix equals

%variable lagcorr is of size [N,N]
lagcorr = (AB.*ab - Ab.*aB)/sqrt(2*(T-1));


%% Save lagcorr matrix

save('Reliable_STDP2_correlation_matrix','lagcorr')






