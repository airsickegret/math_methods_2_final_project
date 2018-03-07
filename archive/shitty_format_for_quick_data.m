% format output csv for public use

data = output2;

for i = 1:length(data)
    Data(i).neuron_num = data(i,1);
    Data(i).spikes = data(i,2:max(find(~isnan(data(i,2:end)))));
end


save('model_spike_trains_per_neuron','Data')